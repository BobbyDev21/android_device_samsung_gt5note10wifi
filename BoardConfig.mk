# Inherit from common
include device/samsung/gte-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gt5note10wifi

#MALLOC_SVELTE_FOR_LIBC32 := true

# Asserts
TARGET_OTA_ASSERT_DEVICE := gt5note10wifi,gt5note10wifixx,SM-P550,SM-T550,gt510wifi

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gt5note10wifi_eur_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Enable QCOM FM feature
TARGET_QCOM_NO_FM_FIRMWARE := true

# Low Latency
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138278912
