#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_marble
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

# Derpfest Feature
DERPFEST_BUILD_TYPE := Community
TARGET_SUPPORTS_BLUR := true
TARGET_INCLUDE_ACCORD := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true

