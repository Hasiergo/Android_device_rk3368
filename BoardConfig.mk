#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/hannspree/rk3368_32

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := rk3368
TARGET_BOARD_PLATFORM_GPU := G6110
TARGET_BOARD_HARDWARE := rk33board

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_SMP := true

# Re-enable emulator for 32-bit
BUILD_EMULATOR := false

TARGET_OTA_ASSERT_DEVICE := rk3368_32

# RenderScript
# OVERRIDE_RS_DRIVER := libnvRSDriver.so
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a53
BOARD_OVERRIDE_RS_CPU_VARIANT_64 := cortex-a53
# DISABLE_RS_64_BIT_DRIVER := true

TARGET_USES_64_BIT_BCMDHD := true
TARGET_USES_64_BIT_BINDER := true

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_EGL_CFG := $(DEVICE_FOLDER)/egl.cfg
BOARD_RECOVERY_BLDRMSG_OFFSET := 16384

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS2 androidboot.baseband=N/A androidboot.selinux=permissive androidboot.hardware=rk30board androidboot.console=ttyS2 init=/init
BOARD_KERNEL_BASE := 0x60400000
BOARD_KERNEL_PAGESIZE := 16384
#BOARD_RAMDISK_OFFSET := 0x62000000
#BOARD_KERNEL_TAGS_OFFSET := 0x60088000
BOARD_MKBOOTIMG_ARGS := --base 0x60400000 --pagesize 16384 --ramdisk_offset 0x62000000 --second_offset 0x60f00000 --tags_offset 0x60088000 
#BOARD_FLASH_BLOCK_SIZE := 1048576 # (BOARD_KERNEL_PAGESIZE * 64)
#BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
#BOARD_KERNEL_IMAGE_NAME := kernel
#TARGET_KERNEL_ARCH := arm
#TARGET_KERNEL_HEADER_ARCH := arm
#TARGET_KERNEL_SOURCE := kernel/hannspree/rk3368_32
#TARGET_KERNEL_CONFIG := rk3368_32_defconfig


TARGET_PREBUILT_RECOVERY_KERNEL := device/hannspree/rk3368_32/kernel
TARGET_PREBUILT_KERNEL := device/hannspree/rk3368_32/kernel

# Ramdisk compression
LZMA_RAMDISK_TARGETS := recovery

# Recovery
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := device/hannspree/rk3368_32/recovery/root/fstab.rk30board
TARGET_RECOVERY_INITRC := device/hannspree/rk3368_32/recovery/root/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_FORCE_PIXEL_FORMAT := "RGB_565"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_RECOVERY_BLDRMSG_OFFSET := 16384
USE_E2FSPROGS := true

MALLOC_IMPL := dlmalloc

# Copy RK3368 own init.rc file
TARGET_PROVIDES_INIT_RC := true

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TW_BRIGHTNESS_PATH := "/brightness"
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920
TW_THEME := portrait_hdpi
#DEVICE_RESOLUTION := 1080 x 1920
TW_EXTRA_LANGUAGES := false
TARGET_RECOVERY_FORCE_PIXEL_FORMAT := RGB_565
#TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_CRYPTO := true
TW_NO_BATT_PERCENT := true
TW_NO_SCREEN_TIMEOUT := true
TW_HAS_MTP := true
TW_HAVE_SELINUX := true
TW_INCLUDE_FB2PNG := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_REBOOT_BOOTLOADER := true
TW_IGNORE_MISC_WIPE_DATA := false
TWRP_EVENT_LOGGING := false
