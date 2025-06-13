#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Firmware
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/lenovo/aaron/proprietary/vendor/firmware/,$(TARGET_RECOVERY_OUT)/root/vendor/firmware)

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    init.aee.rc \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6765.rc \
    init.mt6765.usb.rc \
    init.mt8768.rc \
    init.project.rc \
    init.recovery.mt6765.rc \
    init.recovery.mt8768.rc \
    init.sensor_1_0.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \
    ueventd.aaron.rc

PRODUCT_PACKAGES += \
    fstab.enableswap \
    fstab.mt6765 \
    fstab.mt6765_ramdisk \
    fstab.mt8768 \
    fstab.mt8768_ramdisk

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
