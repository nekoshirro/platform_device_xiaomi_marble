#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common Evolution-X configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_marble
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/marble/marble:15/AQ3A.250226.002/OS3.0.5.0.VMRCNXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Evolution-X configuration
EVO_BUILD_TYPE := Unofficial
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BUILD_APERTURE_CAMERA := false
WITH_GMS := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_BOOT_ANIMATIONS := true
TARGET_INCLUDE_ACCORD := false
TARGET_ENABLE_BLUR := true
TARGET_ENABLE_FP_OVERRIDE := false
