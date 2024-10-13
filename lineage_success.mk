#
# Copyright (C) 2018 The LineageOS Project
#
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

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from success device
$(call inherit-product, device/zte/success/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_success
PRODUCT_DEVICE := success
PRODUCT_BRAND := success
PRODUCT_MODEL := ZTE V0900
PRODUCT_MANUFACTURER := ZTE

TARGET_VENDOR_PRODUCT_NAME := P450S10_O
TARGET_VENDOR_DEVICE_NAME := msm8953_64

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="P450S10" \
    PRODUCT_NAME="CN_P450S10" \
    PRIVATE_BUILD_DESC="P450S10_O-user 8.1.0 OPM1.171019.026 465 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop.
BUILD_FINGERPRINT := ZTE/CN_P450S10/P450S10:8.1.0/OPM1.171019.026/20181204.140723:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-zte
