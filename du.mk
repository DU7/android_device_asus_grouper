# Copyright (C) 2015 The Pure Nexus Project
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

# Include DU tablet configuration
include vendor/du/config/common_full_tablet_wifionly.mk

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/aosp_grouper.mk)
$(call inherit-product, vendor/asus/grouper/asus-vendor.mk)

# Override AOSP build properties
PRODUCT_NAME := du_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=grouper \
    BUILD_FINGERPRINT=google/grouper/grouper:6.0.1/MMB29V/2480792:user/release-keys \
    PRIVATE_BUILD_DESC="grouper-user 6.0.1 MMB29Q 2480792 release-keys"
