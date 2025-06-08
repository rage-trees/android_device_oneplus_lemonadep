#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonadep device
$(call inherit-product, device/oneplus/lemonadep/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

PRODUCT_NAME := lineage_lemonadep
PRODUCT_DEVICE := lemonadep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2125

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus9Pro-user 14 UQ2A.240505.002 1-1 release-keys" \
    BuildFingerprint=OnePlus/OnePlus9Pro/OnePlus9Pro:14/UQ2A.240505.002/1-1:user/release-keys \
    DeviceName=OnePlus9Pro \
    DeviceProduct=OnePlus9Pro \
    SystemDevice=OnePlus9Pro \
    SystemName=OnePlus9Pro

# Stuff
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_GAPPS_ARCH := arm64
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Boot animation
TARGET_SCREEN_HEIGHT := 3216
TARGET_SCREEN_WIDTH := 1440
