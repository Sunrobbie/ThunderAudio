################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.cpp \
../edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp 

OBJS += \
./edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.o \
./edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.o 

CPP_DEPS += \
./edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.d \
./edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.d 


# Each subdirectory must supply rules for building sources it contributes
edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.o: ../edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c++0x '-DDEBUG_EFM=1' '-DEFR32MG12P332F1024GL125=1' '-DEIDSP_QUANTIZE_FILTERBANK=0' '-DEIDSP_USE_CMSIS_DSP=1' '-DEI_CLASSIFIER_SLICES_PER_MODEL_WINDOW=3' '-DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1' '-DEI_PORTING_SILABS=1' '-DEI_SENSOR_AQ_STREAM=FILE' '-DSL_HEAP_SIZE=53248' '-DSL_STACK_SIZE=32768' '-DTF_LITE_STATIC_MEMORY=1' '-D__StackLimit=536870912' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\config" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\autogen" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\brd4166a" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\QCBOR\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\QCBOR\src" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\edge-impulse-sdk\porting" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\ingestion-sdk-c" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\ingestion-sdk-platform\SiliconLabs" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\ingestion-sdk-platform\SiliconLabs\sensors" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\model-parameters" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\repl" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\tflite-model" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\Device\SiliconLabs\EFR32MG12P\Include" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\app\common\util\app_assert" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\common\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\protocol\bluetooth\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\bmp280\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\bmp280\bosch\BMP280_driver" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\board\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\bootloader" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\bootloader\api" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\ccs811\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\ccs811\firmware" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\CMSIS\Include" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\service\device_init\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\emdrv\dmadrv\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\emdrv\common\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\emlib\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\driver\i2cspm\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\icm20648\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\imu\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\service\iostream\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\driver\leddrv\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\mbedtls\include" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\sl_component\sl_mbedtls_support\config" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\mbedtls\library" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\sl_component\sl_alt\include" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\sl_component\sl_mbedtls_support\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\mic\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\mx25_flash_shutdown\inc\sl_mx25_flash_shutdown_usart" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\service\power_manager\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\sl_component\sl_psa_driver\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\common" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\protocol\ble" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\protocol\ieee802154" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\protocol\zwave" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\chip\efr32\efr32xg1x" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\plugin\pa-conversions" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\plugin\pa-conversions\efr32xg1x" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\si1133\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\si70xx\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\silicon_labs\silabs_core\memory_manager" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\app\bluetooth\common\simple_timer" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\common\toolchain\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\service\system\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\service\sleeptimer\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\sl_component\sl_protocol_crypto\src" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\emdrv\spidrv\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\service\udelay\inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -fno-rtti -fno-exceptions -Wno-unused-parameter -Wno-missing-field-initializers -c -fmessage-length=0 -MMD -MP -MF"edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.d" -MT"edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.o: ../edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C++ Compiler'
	arm-none-eabi-g++ -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c++0x '-DDEBUG_EFM=1' '-DEFR32MG12P332F1024GL125=1' '-DEIDSP_QUANTIZE_FILTERBANK=0' '-DEIDSP_USE_CMSIS_DSP=1' '-DEI_CLASSIFIER_SLICES_PER_MODEL_WINDOW=3' '-DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1' '-DEI_PORTING_SILABS=1' '-DEI_SENSOR_AQ_STREAM=FILE' '-DSL_HEAP_SIZE=53248' '-DSL_STACK_SIZE=32768' '-DTF_LITE_STATIC_MEMORY=1' '-D__StackLimit=536870912' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\config" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\autogen" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\brd4166a" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\QCBOR\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\QCBOR\src" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\edge-impulse-sdk\porting" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\ingestion-sdk-c" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\ingestion-sdk-platform\SiliconLabs" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\ingestion-sdk-platform\SiliconLabs\sensors" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\model-parameters" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\repl" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\edgeimpulse\tflite-model" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\Device\SiliconLabs\EFR32MG12P\Include" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\app\common\util\app_assert" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\common\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\protocol\bluetooth\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\bmp280\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\bmp280\bosch\BMP280_driver" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\board\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\bootloader" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\bootloader\api" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\ccs811\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\ccs811\firmware" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\CMSIS\Include" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\service\device_init\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\emdrv\dmadrv\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\emdrv\common\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\emlib\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\emdrv\gpiointerrupt\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\driver\i2cspm\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\icm20648\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\imu\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\service\iostream\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\driver\leddrv\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\mbedtls\include" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\sl_component\sl_mbedtls_support\config" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\mbedtls\library" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\sl_component\sl_alt\include" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\sl_component\sl_mbedtls_support\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\mic\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\mx25_flash_shutdown\inc\sl_mx25_flash_shutdown_usart" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\service\power_manager\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\sl_component\sl_psa_driver\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\common" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\protocol\ble" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\protocol\ieee802154" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\protocol\zwave" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\chip\efr32\efr32xg1x" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\plugin\pa-conversions" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\radio\rail_lib\plugin\pa-conversions\efr32xg1x" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\si1133\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\hardware\driver\si70xx\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\silicon_labs\silabs_core\memory_manager" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\app\bluetooth\common\simple_timer" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\common\toolchain\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\service\system\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\service\sleeptimer\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\util\third_party\crypto\sl_component\sl_protocol_crypto\src" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\emdrv\spidrv\inc" -I"C:\Users\sunro\SimplicityStudio\v5_workspace\firmware-silabs-thunderboard-sense-2\gecko_sdk_3.2.2\platform\service\udelay\inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -fno-rtti -fno-exceptions -Wno-unused-parameter -Wno-missing-field-initializers -c -fmessage-length=0 -MMD -MP -MF"edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.d" -MT"edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


