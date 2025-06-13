#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from aaron device
$(call inherit-product, device/lenovo/aaron/device.mk)

PRODUCT_DEVICE := aaron
PRODUCT_NAME := lineage_aaron
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-8705X
PRODUCT_MANUFACTURER := LENOVO

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_aaron_row_call-user 10 QP1A.190711.020 TB-8705X_U release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-8705X/8705X:10/QP1A.190711.020/S300259_220301_BMP:user/release-keys
