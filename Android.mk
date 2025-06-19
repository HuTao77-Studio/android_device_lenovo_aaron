#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),aaron)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

VENDOR_SYMLINKS := \
	$(TARGET_OUT_VENDOR)/lib/hw \
	$(TARGET_OUT_VENDOR)/lib64/hw \
	$(TARGET_OUT_VENDOR)/bin \
	$(TARGET_OUT_VENDOR)/app/SensorHub/lib/arm64

$(VENDOR_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	$(hide) echo "Making vendor symlinks"
	@mkdir -p $(TARGET_OUT_VENDOR)/lib/hw
	@mkdir -p $(TARGET_OUT_VENDOR)/lib64/hw
	@mkdir -p $(TARGET_OUT_VENDOR)/bin
	@mkdir -p $(TARGET_OUT_VENDOR)/app/SensorHub/lib/arm64

	@ln -sf gatekeeper.mt6765.so $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.default.so
	@ln -sf gatekeeper.mt6765.so $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.default.so

	@ln -sf $(TARGET_OUT_VENDOR)/lib64/libem_sensor_jni.so $(TARGET_OUT_VENDOR)/app/SensorHub/lib/arm64/libem_sensor_jni.so

	@ln -sf toybox_vendor $(TARGET_OUT_VENDOR)/bin/bc

ALL_DEFAULT_INSTALLED_MODULES += $(VENDOR_SYMLINKS)

endif
