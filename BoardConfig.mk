#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from common tone-common
-include device/sony/tone-common/BoardConfigCommon.mk

DEVICE_PATH := device/sony/dora

# Assert
TARGET_OTA_ASSERT_DEVICE := dora

# BCM BT
BOARD_HAVE_BLUETOOTH_BCM := true

# BCM FM
BOARD_HAVE_BCM_FM := true

# DT2W sysfs node
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"

# Kernel
TARGET_KERNEL_CONFIG := dora_defconfig

# NFC
NXP_CHIP_TYPE := PN547C2
NXP_CHIP_FW_TYPE := PN547C2

# WiFi
WIFI_BUS := PCIE

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
-include vendor/sony/dora/BoardConfigVendor.mk
