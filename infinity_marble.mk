#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common Infinity-X configuration
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_marble
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23049RAD8C

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="marble-user 15 AQ3A.250226.002 OS3.0.1.0.VMRCNXM release-keys" \
    BuildFingerprint=Redmi/marble/marble:15/AQ3A.250226.002/OS3.0.1.0.VMRCNXM:user/release-keys \
    DeviceProduct=marble \
    SystemName=marble_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Infinity-X
TARGET_BOOT_ANIMATION_RES := 1080
INFINITY_MAINTAINER := "Alchemist"
USE_MOTO_CALCULATOR := false
TARGET_HAS_UDFPS := false
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true
TARGET_SHIPS_FULL_GAPPS := true
TARGET_SHIPS_GOOGLE_DIALER := true
TARGET_FACE_UNLOCK_SUPPORTED  := true
TARGET_SUPPORTS_64_BIT_APPS := true
