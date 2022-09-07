#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from lavender device
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Inherit some common Nusantara stuff.
$(call inherit-product, vendor/qassa/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
#TARGET_GAPPS_ARCH := arm64
#TARGET_INCLUDE_STOCK_ARCORE := true
#WITH_GAPPS :=true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Charging Animation
USE_PIXEL_CHARGING := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := qassa_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="lavender" \
    PRODUCT_NAME="lavender" \
    PRIVATE_BUILD_DESC="redfin-user 12 SP2A.220305.012 8177914 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:12/SP2A.220305.012/8177914:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
