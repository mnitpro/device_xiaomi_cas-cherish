#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/xiaomi/cas/device.mk)
# Inherit some common sweet stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# GApps
$(call inherit-product-if-exists, vendor/gapps/core/config.mk)

PRODUCT_NAME := cherish_cas
PRODUCT_DEVICE := cas
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2007J1SC
PRODUCT_MANUFACTURER := Xiaomi
BOARD_VENDOR := Xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# FOD animations
EXTRA_UDFPS_ANIMATIONS := true
CHERISH_BUILD_TYPE := UNOFFICIAL

WITH_GMS_CORE := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/cas/cas:12/RKQ1.211001.001/V13.0.1.0.SJJCNXM:user/release-keys
