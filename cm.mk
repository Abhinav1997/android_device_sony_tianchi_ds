# Copyright (C) 2016 The CyanogenMod Project
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

$(call inherit-product, device/sony/tianchi_dsds/aosp_d5322.mk)

TARGET_OTA_ASSERT_DEVICE := D5322, tianchi_dsds

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/tianchi/bootrec-device:root/sbin/bootrec-device

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5322
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5322/D5322:5.1.1/19.4.A.0.182/2188515266:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5322-user 5.1.1 19.4.A.0.182 2188515266 release-keys"

PRODUCT_NAME := cm_tianchi_dsds
PRODUCT_DEVICE := tianchi_dsds
PRODUCT_MODEL := Xperia T2 Ultra Dual
