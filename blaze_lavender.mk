#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Blaze stuff
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)
BLAZE_MAINTAINER := Coptan99
TARGET_FACE_UNLOCK_SUPPORTED := true
BLAZE_BUILD_TYPE := OFFICIAL
TARGET_USE_PIXEL_CHARGER := true

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := blaze_lavender
PRODUCT_MODEL := Redmi Note 7

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := lavender

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 12 SP2A.220305.012 8177914 release-keys"

BUILD_FINGERPRINT := google/coral/coral:12/SP2A.220305.012/8177914:user/release-keys
