#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)
$(call inherit-product, vendor/pixelgapps/pixel-gapps.mk)
$(call inherit-product, vendor/apps/OPScreenRecord/config.mk)
# Inherit some common Wrath stuff.
$(call inherit-product, vendor/404/configs/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := p404_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

WITH_GAPPS=true
TARGET_GAPPS_ARCH := arm64

TARGET_INCLUDE_STOCK_ARCORE := true

IS_PHONE := true

TARGET_USES_RECORDER := true
