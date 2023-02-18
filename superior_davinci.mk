#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common Superior stuff.
$(call inherit-product, vendor/superior/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := superior_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Maintainer Flag (one word only/no spacing)
MAINTAINER := MKツ

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# Quick Tap Feature
TARGET_SUPPORTS_QUICK_TAP := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true

# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# GAPPS build flag, if not defined build type is vanilla
BUILD_WITH_GAPPS := true

# Disable/Enable Blur Support, default is false
TARGET_ENABLE_BLUR := true
