####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 7                                               #
####################################################################

BASE_SDK_PATH = C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/gecko_sdk_suite/v3.2
UNAME:=$(shell uname -s | sed -e 's/^\(CYGWIN\).*/\1/' | sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_3.2.1

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DEIDSP_QUANTIZE_FILTERBANK=0' \
 '-DEIDSP_USE_CMSIS_DSP=1' \
 '-DEI_CLASSIFIER_SLICES_PER_MODEL_WINDOW=3' \
 '-DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1' \
 '-DEI_PORTING_SILABS=1' \
 '-DEI_SENSOR_AQ_STREAM=FILE' \
 '-DSL_HEAP_SIZE=53248' \
 '-DSL_STACK_SIZE=32768' \
 '-DTF_LITE_STATIC_MEMORY=1' \
 '-D__StackLimit=536870912' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DEIDSP_QUANTIZE_FILTERBANK=0' \
 '-DEIDSP_USE_CMSIS_DSP=1' \
 '-DEI_CLASSIFIER_SLICES_PER_MODEL_WINDOW=3' \
 '-DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1' \
 '-DEI_PORTING_SILABS=1' \
 '-DEI_SENSOR_AQ_STREAM=FILE' \
 '-DSL_HEAP_SIZE=53248' \
 '-DSL_STACK_SIZE=32768' \
 '-DTF_LITE_STATIC_MEMORY=1' \
 '-D__StackLimit=536870912' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>'

INCLUDES += \
 -I. \
 -Ibrd4166a \
 -Iedgeimpulse \
 -Iedgeimpulse/QCBOR/inc \
 -Iedgeimpulse/QCBOR/src \
 -Iedgeimpulse/edge-impulse-sdk/porting \
 -Iedgeimpulse/ingestion-sdk-c \
 -Iedgeimpulse/ingestion-sdk-platform/SiliconLabs \
 -Iedgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors \
 -Iedgeimpulse/model-parameters \
 -Iedgeimpulse/repl \
 -Iedgeimpulse/tflite-model \
 -Igecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Include \
 -Igecko_sdk_3.2.2/app/common/util/app_assert \
 -Igecko_sdk_3.2.2/platform/common/inc \
 -Igecko_sdk_3.2.2/protocol/bluetooth/inc \
 -Igecko_sdk_3.2.2/hardware/driver/bmp280/inc \
 -Igecko_sdk_3.2.2/hardware/driver/bmp280/bosch/BMP280_driver \
 -Igecko_sdk_3.2.2/hardware/board/inc \
 -Igecko_sdk_3.2.2/platform/bootloader \
 -Igecko_sdk_3.2.2/platform/bootloader/api \
 -Igecko_sdk_3.2.2/hardware/driver/ccs811/inc \
 -Igecko_sdk_3.2.2/hardware/driver/ccs811/firmware \
 -Igecko_sdk_3.2.2/platform/CMSIS/Include \
 -Igecko_sdk_3.2.2/platform/service/device_init/inc \
 -Igecko_sdk_3.2.2/platform/emdrv/dmadrv/inc \
 -Igecko_sdk_3.2.2/platform/emdrv/common/inc \
 -Igecko_sdk_3.2.2/platform/emlib/inc \
 -Igecko_sdk_3.2.2/platform/emdrv/gpiointerrupt/inc \
 -Igecko_sdk_3.2.2/platform/driver/i2cspm/inc \
 -Igecko_sdk_3.2.2/hardware/driver/icm20648/inc \
 -Igecko_sdk_3.2.2/hardware/driver/imu/inc \
 -Igecko_sdk_3.2.2/platform/service/iostream/inc \
 -Igecko_sdk_3.2.2/platform/driver/leddrv/inc \
 -Igecko_sdk_3.2.2/util/third_party/crypto/mbedtls/include \
 -Igecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/config \
 -Igecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library \
 -Igecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/include \
 -Igecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/inc \
 -Igecko_sdk_3.2.2/hardware/driver/mic/inc \
 -Igecko_sdk_3.2.2/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -Igecko_sdk_3.2.2/platform/service/power_manager/inc \
 -Igecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/inc \
 -Igecko_sdk_3.2.2/platform/radio/rail_lib/common \
 -Igecko_sdk_3.2.2/platform/radio/rail_lib/protocol/ble \
 -Igecko_sdk_3.2.2/platform/radio/rail_lib/protocol/ieee802154 \
 -Igecko_sdk_3.2.2/platform/radio/rail_lib/protocol/zwave \
 -Igecko_sdk_3.2.2/platform/radio/rail_lib/chip/efr32/efr32xg1x \
 -Igecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions \
 -Igecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x \
 -Igecko_sdk_3.2.2/hardware/driver/si1133/inc \
 -Igecko_sdk_3.2.2/hardware/driver/si70xx/inc \
 -Igecko_sdk_3.2.2/util/silicon_labs/silabs_core/memory_manager \
 -Igecko_sdk_3.2.2/app/bluetooth/common/simple_timer \
 -Igecko_sdk_3.2.2/platform/common/toolchain/inc \
 -Igecko_sdk_3.2.2/platform/service/system/inc \
 -Igecko_sdk_3.2.2/platform/service/sleeptimer/inc \
 -Igecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_protocol_crypto/src \
 -Igecko_sdk_3.2.2/platform/emdrv/spidrv/inc \
 -Igecko_sdk_3.2.2/platform/service/udelay/inc \
 -Iconfig \
 -Iautogen

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lstdc++ \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 gecko_sdk_3.2.2/protocol/bluetooth/lib/EFR32MG12P/GCC/libbluetooth.a \
 gecko_sdk_3.2.2/protocol/bluetooth/lib/EFR32MG12P/GCC/libpsstore.a \
 gecko_sdk_3.2.2/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg12_gcc_release.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -fno-builtin \
 -imacros sl_gcc_preinclude.h \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -fno-builtin \
 -imacros sl_gcc_preinclude.h \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/project/app.o: app.c
	@echo 'Building app.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/gatt_db.o: autogen/gatt_db.c
	@echo 'Building autogen/gatt_db.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/gatt_db.c
CDEPS += $(OUTPUT_DIR)/project/autogen/gatt_db.d
OBJS += $(OUTPUT_DIR)/project/autogen/gatt_db.o

$(OUTPUT_DIR)/project/autogen/sl_bluetooth.o: autogen/sl_bluetooth.c
	@echo 'Building autogen/sl_bluetooth.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_bluetooth.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_bluetooth.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_bluetooth.o

$(OUTPUT_DIR)/project/autogen/sl_board_default_init.o: autogen/sl_board_default_init.c
	@echo 'Building autogen/sl_board_default_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_board_default_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.o

$(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o: autogen/sl_device_init_clocks.c
	@echo 'Building autogen/sl_device_init_clocks.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_device_init_clocks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@echo 'Building autogen/sl_event_handler.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@echo 'Building autogen/sl_iostream_handles.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o: autogen/sl_iostream_init_usart_instances.c
	@echo 'Building autogen/sl_iostream_init_usart_instances.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_usart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o: autogen/sl_power_manager_handler.c
	@echo 'Building autogen/sl_power_manager_handler.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_power_manager_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o

$(OUTPUT_DIR)/project/autogen/sl_simple_rgbw_pwm_led_instances.o: autogen/sl_simple_rgbw_pwm_led_instances.c
	@echo 'Building autogen/sl_simple_rgbw_pwm_led_instances.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_rgbw_pwm_led_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_rgbw_pwm_led_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_rgbw_pwm_led_instances.o

$(OUTPUT_DIR)/project/brd4166a/rgbled.o: brd4166a/rgbled.c
	@echo 'Building brd4166a/rgbled.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ brd4166a/rgbled.c
CDEPS += $(OUTPUT_DIR)/project/brd4166a/rgbled.d
OBJS += $(OUTPUT_DIR)/project/brd4166a/rgbled.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.o: edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.o: edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/image/processing.o: edgeimpulse/edge-impulse-sdk/dsp/image/processing.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/image/processing.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/image/processing.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/image/processing.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/image/processing.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.o: edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.o: edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/memory.o: edgeimpulse/edge-impulse-sdk/dsp/memory.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/memory.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/memory.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/memory.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/memory.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/ei_run_impulse.o: edgeimpulse/ingestion-sdk-c/ei_run_impulse.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-c/ei_run_impulse.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-c/ei_run_impulse.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/ei_run_impulse.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/ei_run_impulse.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/ei_sampler.o: edgeimpulse/ingestion-sdk-c/ei_sampler.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-c/ei_sampler.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-c/ei_sampler.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/ei_sampler.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/ei_sampler.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/sensor_aq.o: edgeimpulse/ingestion-sdk-c/sensor_aq.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-c/sensor_aq.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-c/sensor_aq.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/sensor_aq.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/sensor_aq.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/sensor_aq_mbedtls_hs256.o: edgeimpulse/ingestion-sdk-c/sensor_aq_mbedtls_hs256.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-c/sensor_aq_mbedtls_hs256.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-c/sensor_aq_mbedtls_hs256.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/sensor_aq_mbedtls_hs256.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/sensor_aq_mbedtls_hs256.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_device_silabs_efm32mg.o: edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_device_silabs_efm32mg.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_device_silabs_efm32mg.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_device_silabs_efm32mg.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_device_silabs_efm32mg.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_device_silabs_efm32mg.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_main.o: edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_main.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_main.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_main.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_main.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_main.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_silabs_fs_commands.o: edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_silabs_fs_commands.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_silabs_fs_commands.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_silabs_fs_commands.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_silabs_fs_commands.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_silabs_fs_commands.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_inertialsensor.o: edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_inertialsensor.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_inertialsensor.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_inertialsensor.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_inertialsensor.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_inertialsensor.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_microphone.o: edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_microphone.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_microphone.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_microphone.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_microphone.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_microphone.o

$(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/ieee754.o: edgeimpulse/QCBOR/src/ieee754.c
	@echo 'Building edgeimpulse/QCBOR/src/ieee754.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/QCBOR/src/ieee754.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/ieee754.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/ieee754.o

$(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/qcbor_decode.o: edgeimpulse/QCBOR/src/qcbor_decode.c
	@echo 'Building edgeimpulse/QCBOR/src/qcbor_decode.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/QCBOR/src/qcbor_decode.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/qcbor_decode.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/qcbor_decode.o

$(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/qcbor_encode.o: edgeimpulse/QCBOR/src/qcbor_encode.c
	@echo 'Building edgeimpulse/QCBOR/src/qcbor_encode.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/QCBOR/src/qcbor_encode.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/qcbor_encode.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/qcbor_encode.o

$(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/UsefulBuf.o: edgeimpulse/QCBOR/src/UsefulBuf.c
	@echo 'Building edgeimpulse/QCBOR/src/UsefulBuf.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/QCBOR/src/UsefulBuf.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/UsefulBuf.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/UsefulBuf.o

$(OUTPUT_DIR)/project/edgeimpulse/repl/repl.o: edgeimpulse/repl/repl.cpp
	@echo 'Building edgeimpulse/repl/repl.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/repl/repl.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/repl/repl.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/repl/repl.o

$(OUTPUT_DIR)/project/edgeimpulse/tflite-model/trained_model_compiled.o: edgeimpulse/tflite-model/trained_model_compiled.cpp
	@echo 'Building edgeimpulse/tflite-model/trained_model_compiled.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/tflite-model/trained_model_compiled.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/tflite-model/trained_model_compiled.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/tflite-model/trained_model_compiled.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/app/bluetooth/common/simple_timer/sl_simple_timer.o: gecko_sdk_3.2.2/app/bluetooth/common/simple_timer/sl_simple_timer.c
	@echo 'Building gecko_sdk_3.2.2/app/bluetooth/common/simple_timer/sl_simple_timer.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/app/bluetooth/common/simple_timer/sl_simple_timer.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/app/bluetooth/common/simple_timer/sl_simple_timer.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/app/bluetooth/common/simple_timer/sl_simple_timer.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/board/src/sl_board_control_gpio.o: gecko_sdk_3.2.2/hardware/board/src/sl_board_control_gpio.c
	@echo 'Building gecko_sdk_3.2.2/hardware/board/src/sl_board_control_gpio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/board/src/sl_board_init.o: gecko_sdk_3.2.2/hardware/board/src/sl_board_init.c
	@echo 'Building gecko_sdk_3.2.2/hardware/board/src/sl_board_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.o: gecko_sdk_3.2.2/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.c
	@echo 'Building gecko_sdk_3.2.2/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/bmp280/src/sl_bmp280.o: gecko_sdk_3.2.2/hardware/driver/bmp280/src/sl_bmp280.c
	@echo 'Building gecko_sdk_3.2.2/hardware/driver/bmp280/src/sl_bmp280.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/driver/bmp280/src/sl_bmp280.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/bmp280/src/sl_bmp280.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/bmp280/src/sl_bmp280.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/ccs811/src/sl_ccs811.o: gecko_sdk_3.2.2/hardware/driver/ccs811/src/sl_ccs811.c
	@echo 'Building gecko_sdk_3.2.2/hardware/driver/ccs811/src/sl_ccs811.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/driver/ccs811/src/sl_ccs811.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/ccs811/src/sl_ccs811.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/ccs811/src/sl_ccs811.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/icm20648/src/sl_icm20648.o: gecko_sdk_3.2.2/hardware/driver/icm20648/src/sl_icm20648.c
	@echo 'Building gecko_sdk_3.2.2/hardware/driver/icm20648/src/sl_icm20648.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/driver/icm20648/src/sl_icm20648.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/icm20648/src/sl_icm20648.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/icm20648/src/sl_icm20648.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu.o: gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu.c
	@echo 'Building gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_dcm.o: gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_dcm.c
	@echo 'Building gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_dcm.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_dcm.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_dcm.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_dcm.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_fuse.o: gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_fuse.c
	@echo 'Building gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_fuse.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_fuse.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_fuse.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_fuse.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_math.o: gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_math.c
	@echo 'Building gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_math.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_math.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_math.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/imu/src/sl_imu_math.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/mic/src/sl_mic_i2s.o: gecko_sdk_3.2.2/hardware/driver/mic/src/sl_mic_i2s.c
	@echo 'Building gecko_sdk_3.2.2/hardware/driver/mic/src/sl_mic_i2s.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/driver/mic/src/sl_mic_i2s.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/mic/src/sl_mic_i2s.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/mic/src/sl_mic_i2s.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o: gecko_sdk_3.2.2/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
	@echo 'Building gecko_sdk_3.2.2/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/si1133/src/sl_si1133.o: gecko_sdk_3.2.2/hardware/driver/si1133/src/sl_si1133.c
	@echo 'Building gecko_sdk_3.2.2/hardware/driver/si1133/src/sl_si1133.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/driver/si1133/src/sl_si1133.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/si1133/src/sl_si1133.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/si1133/src/sl_si1133.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/si70xx/src/sl_si70xx.o: gecko_sdk_3.2.2/hardware/driver/si70xx/src/sl_si70xx.c
	@echo 'Building gecko_sdk_3.2.2/hardware/driver/si70xx/src/sl_si70xx.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/hardware/driver/si70xx/src/sl_si70xx.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/si70xx/src/sl_si70xx.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/hardware/driver/si70xx/src/sl_si70xx.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/bootloader/api/btl_interface.o: gecko_sdk_3.2.2/platform/bootloader/api/btl_interface.c
	@echo 'Building gecko_sdk_3.2.2/platform/bootloader/api/btl_interface.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/bootloader/api/btl_interface_storage.o: gecko_sdk_3.2.2/platform/bootloader/api/btl_interface_storage.c
	@echo 'Building gecko_sdk_3.2.2/platform/bootloader/api/btl_interface_storage.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/common/src/sl_slist.o: gecko_sdk_3.2.2/platform/common/src/sl_slist.c
	@echo 'Building gecko_sdk_3.2.2/platform/common/src/sl_slist.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/common/toolchain/src/sl_memory.o: gecko_sdk_3.2.2/platform/common/toolchain/src/sl_memory.c
	@echo 'Building gecko_sdk_3.2.2/platform/common/toolchain/src/sl_memory.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.o: gecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c
	@echo 'Building gecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o: gecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
	@echo 'Building gecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/driver/i2cspm/src/sl_i2cspm.o: gecko_sdk_3.2.2/platform/driver/i2cspm/src/sl_i2cspm.c
	@echo 'Building gecko_sdk_3.2.2/platform/driver/i2cspm/src/sl_i2cspm.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/driver/i2cspm/src/sl_i2cspm.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/driver/i2cspm/src/sl_i2cspm.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/driver/i2cspm/src/sl_i2cspm.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/driver/leddrv/src/sl_led.o: gecko_sdk_3.2.2/platform/driver/leddrv/src/sl_led.c
	@echo 'Building gecko_sdk_3.2.2/platform/driver/leddrv/src/sl_led.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/driver/leddrv/src/sl_led.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/driver/leddrv/src/sl_led.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/driver/leddrv/src/sl_led.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.o: gecko_sdk_3.2.2/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.c
	@echo 'Building gecko_sdk_3.2.2/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emdrv/dmadrv/src/dmadrv.o: gecko_sdk_3.2.2/platform/emdrv/dmadrv/src/dmadrv.c
	@echo 'Building gecko_sdk_3.2.2/platform/emdrv/dmadrv/src/dmadrv.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o: gecko_sdk_3.2.2/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
	@echo 'Building gecko_sdk_3.2.2/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emdrv/gpiointerrupt/src/gpiointerrupt.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emdrv/spidrv/src/spidrv.o: gecko_sdk_3.2.2/platform/emdrv/spidrv/src/spidrv.c
	@echo 'Building gecko_sdk_3.2.2/platform/emdrv/spidrv/src/spidrv.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emdrv/spidrv/src/spidrv.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emdrv/spidrv/src/spidrv.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emdrv/spidrv/src/spidrv.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_assert.o: gecko_sdk_3.2.2/platform/emlib/src/em_assert.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_assert.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_assert.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_assert.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_assert.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_cmu.o: gecko_sdk_3.2.2/platform/emlib/src/em_cmu.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_cmu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_core.o: gecko_sdk_3.2.2/platform/emlib/src/em_core.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_core.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_crypto.o: gecko_sdk_3.2.2/platform/emlib/src/em_crypto.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_crypto.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_crypto.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_crypto.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_crypto.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_emu.o: gecko_sdk_3.2.2/platform/emlib/src/em_emu.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_emu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_gpio.o: gecko_sdk_3.2.2/platform/emlib/src/em_gpio.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_gpio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_i2c.o: gecko_sdk_3.2.2/platform/emlib/src/em_i2c.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_i2c.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_i2c.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_i2c.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_i2c.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_ldma.o: gecko_sdk_3.2.2/platform/emlib/src/em_ldma.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_ldma.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_msc.o: gecko_sdk_3.2.2/platform/emlib/src/em_msc.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_msc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_prs.o: gecko_sdk_3.2.2/platform/emlib/src/em_prs.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_prs.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_prs.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_prs.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_prs.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_rtcc.o: gecko_sdk_3.2.2/platform/emlib/src/em_rtcc.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_rtcc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_system.o: gecko_sdk_3.2.2/platform/emlib/src/em_system.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_system.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_timer.o: gecko_sdk_3.2.2/platform/emlib/src/em_timer.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_timer.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_usart.o: gecko_sdk_3.2.2/platform/emlib/src/em_usart.c
	@echo 'Building gecko_sdk_3.2.2/platform/emlib/src/em_usart.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o: gecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
	@echo 'Building gecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o: gecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
	@echo 'Building gecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_dcdc_s1.o: gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_dcdc_s1.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_dcdc_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_dcdc_s1.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_dcdc_s1.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_dcdc_s1.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_emu_s1.o: gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_emu_s1.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_emu_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_emu_s1.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_emu_s1.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_emu_s1.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_hfxo_s1.o: gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_hfxo_s1.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_hfxo_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_hfxo_s1.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_hfxo_s1.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_hfxo_s1.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_lfxo_s1.o: gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_lfxo_s1.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_lfxo_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_lfxo_s1.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_lfxo_s1.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_lfxo_s1.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_nvic.o: gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_nvic.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_nvic.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream.o: gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_retarget_stdio.o: gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_uart.o: gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_uart.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_uart.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_usart.o: gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_usart.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_usart.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager.o: gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager_debug.o: gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager_debug.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager_debug.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager_debug.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.o: gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/sleeptimer/src/sl_sleeptimer.o: gecko_sdk_3.2.2/platform/service/sleeptimer/src/sl_sleeptimer.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/sleeptimer/src/sl_sleeptimer.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: gecko_sdk_3.2.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/system/src/sl_system_init.o: gecko_sdk_3.2.2/platform/service/system/src/sl_system_init.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/system/src/sl_system_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/system/src/sl_system_process_action.o: gecko_sdk_3.2.2/platform/service/system/src/sl_system_process_action.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/system/src/sl_system_process_action.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/udelay/src/sl_udelay.o: gecko_sdk_3.2.2/platform/service/udelay/src/sl_udelay.c
	@echo 'Building gecko_sdk_3.2.2/platform/service/udelay/src/sl_udelay.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: gecko_sdk_3.2.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@echo 'Building gecko_sdk_3.2.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ gecko_sdk_3.2.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/protocol/bluetooth/src/sl_bt_mbedtls_context.o: gecko_sdk_3.2.2/protocol/bluetooth/src/sl_bt_mbedtls_context.c
	@echo 'Building gecko_sdk_3.2.2/protocol/bluetooth/src/sl_bt_mbedtls_context.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/protocol/bluetooth/src/sl_bt_mbedtls_context.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/protocol/bluetooth/src/sl_bt_mbedtls_context.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/protocol/bluetooth/src/sl_bt_mbedtls_context.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: gecko_sdk_3.2.2/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@echo 'Building gecko_sdk_3.2.2/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/aes.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/aes.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/aes.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/aes.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/aes.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/aes.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/bignum.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/bignum.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/bignum.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/bignum.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/bignum.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/bignum.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cipher.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cipher.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cipher.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cipher.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cipher_wrap.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cipher_wrap.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cipher_wrap.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cmac.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cmac.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cmac.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cmac.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cmac.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/cmac.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ctr_drbg.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ctr_drbg.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ctr_drbg.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ctr_drbg.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ctr_drbg.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ctr_drbg.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecdh.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecdh.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecdh.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecdh.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecdh.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecdh.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecdsa.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecdsa.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecdsa.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecdsa.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecdsa.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecdsa.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecp.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecp.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecp.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecp.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecp.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecp.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecp_curves.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecp_curves.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecp_curves.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecp_curves.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecp_curves.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/ecp_curves.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/entropy.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/entropy.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/entropy.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/entropy.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/entropy.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/entropy.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/entropy_poll.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/entropy_poll.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/entropy_poll.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/entropy_poll.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/entropy_poll.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/entropy_poll.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/error.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/error.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/error.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/error.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/error.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/error.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/hmac_drbg.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/hmac_drbg.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/hmac_drbg.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/hmac_drbg.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/hmac_drbg.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/hmac_drbg.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/md.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/md.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/md.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/md.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/md.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/md.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/platform.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/platform.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/platform.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/platform.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/platform_util.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/platform_util.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/platform_util.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/psa_crypto_client.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/psa_crypto_client.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/psa_crypto_client.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/sha256.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/sha256.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/sha256.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/sha256.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/sha256.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/sha256.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/threading.o: gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/threading.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/threading.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/mbedtls/library/threading.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.o: gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c
	@echo 'Building gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c
CDEPS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.d
OBJS += $(OUTPUT_DIR)/project/gecko_sdk_3.2.2/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.o

$(OUTPUT_DIR)/project/main.o: main.c
	@echo 'Building main.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

$(OUTPUT_DIR)/project/mx25flash_spi.o: mx25flash_spi.c
	@echo 'Building mx25flash_spi.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ mx25flash_spi.c
CDEPS += $(OUTPUT_DIR)/project/mx25flash_spi.d
OBJS += $(OUTPUT_DIR)/project/mx25flash_spi.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA