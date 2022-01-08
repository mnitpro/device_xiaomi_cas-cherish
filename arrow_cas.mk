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

# Inherit from the ArrowOS configuration.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from the ArrowOS additions
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

PRODUCT_NAME := arrow_cas
PRODUCT_DEVICE := cas
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2007J1SC
PRODUCT_MANUFACTURER := Xiaomi

DEVICE_MAINTAINER := Xayah

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/cas/cas:11/RKQ1.200826.002/V12.5.6.0.RJJCNXM:user/release-keys
