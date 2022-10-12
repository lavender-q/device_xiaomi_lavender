#
# Copyright (C) 2022 The LineageOS Project
# Copyright (C) 2022 By Merma1dmanPrjkt
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from lavender device
$(call inherit-product, device/xiaomi/lavender/device.mk)

# mdroidQERROR flags.
$(call inherit-product, vendor/mdroid/config/common_full_phone.mk)
MDROID_DEVICE := lavender
MDROID_MAINTAINER := FBRIIIIIIIII
MDROID_OFFICIAL := true
MDROID_PACKAGE_TYPE := Vanilla
TARGET_FACE_UNLOCK_SUPPORTED := true

# Pixel
WITH_GMS := true
TARGET_GAPPS_ARCH := arm64
USE_PIXEL_CHARGING := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false

# Device identifier.
PRODUCT_NAME := mdroid_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="lavender" \
    PRODUCT_NAME="lavender"
