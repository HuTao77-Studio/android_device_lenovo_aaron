#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

# Recovery init configuration files
include $(CLEAR_VARS)
LOCAL_MODULE       := init.recovery.mt6765.rc
LOCAL_MODULE_STEM  := init.recovery.mt6765.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.recovery.aaron.rc
LOCAL_MODULE_PATH  := $(TARGET_RECOVERY_OUT)/root
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := init.recovery.mt8768.rc
LOCAL_MODULE_STEM  := init.recovery.mt8768.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.recovery.aaron.rc
LOCAL_MODULE_PATH  := $(TARGET_RECOVERY_OUT)/root
include $(BUILD_PREBUILT)

# fstab
include $(CLEAR_VARS)
LOCAL_MODULE	   := fstab.mt6765_ramdisk
LOCAL_MODULE_STEM  := fstab.mt6765
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/fstab.aaron
LOCAL_MODULE_PATH  := $(TARGET_RAMDISK_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE	   := fstab.mt8768_ramdisk
LOCAL_MODULE_STEM  := fstab.mt8768
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/fstab.aaron
LOCAL_MODULE_PATH  := $(TARGET_RAMDISK_OUT)
include $(BUILD_PREBUILT)
