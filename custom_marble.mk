#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common PixelOS configuration
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := custom_marble
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/marble/marble:15/AQ3A.250226.002/OS3.0.5.0.VMRCNXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

CUSTOM_MAINTAINER := Hafidz_Muzakky
