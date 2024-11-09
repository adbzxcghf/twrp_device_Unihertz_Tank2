#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TANK2 device
$(call inherit-product, device/oblue/TANK2/device.mk)

PRODUCT_DEVICE := TANK2
PRODUCT_NAME := twrp_TANK2
PRODUCT_BRAND := 8849
PRODUCT_MODEL := TANK2
PRODUCT_MANUFACTURER := oblue

PRODUCT_GMS_CLIENTID_BASE := android-agold

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="TANK2-user 12 SP1A.210812.016 root.20230817.154048 release-keys"

BUILD_FINGERPRINT := 8849/TANK2/TANK2:12/SP1A.210812.016/root.20230817.154048:user/release-keys
