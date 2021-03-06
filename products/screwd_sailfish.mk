#
# Copyright 2017 Screw'd AOSP
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)


# Check for target product

ifeq (screwd_sailfish,$(TARGET_PRODUCT))

# Include Screw'd common configuration
include vendor/screwd/main.mk

# Inherit aosp_sailfish
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

PRODUCT_NAME := screwd_sailfish
PRODUCT_DEVICE := sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
PRODUCT_MANUFACTURER := Google

endif

#Inline kernel
ifeq (OFFICIAL,$(SCREWD_BUILD_TYPE))
  TARGET_KERNEL_CONFIG := fuckery_defconfig
  TARGET_KERNEL_SOURCE := kernel/google/pixel
  BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
  TARGET_KERNEL_ARCH := arm64
  TARGET_KERNEL_HEADER_ARCH := arm64
  TARGET_GCC_VERSION_ARM64 := 6.x
  TARGET_USES_UNCOMPRESSED_KERNEL := false
else
  KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-6.3/bin
  KERNEL_TOOLCHAIN_PREFIX := aarch64-
  BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
  TARGET_COMPILE_WITH_MSM_KERNEL := true
  TARGET_KERNEL_CONFIG := fuckery_defconfig
  TARGET_KERNEL_SOURCE := kernel/google/pixel
endif

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    BUILD_FINGERPRINT=google/sailfish/sailfish:7.1.2/NZH54D/4146044:user/release-keys \
    PRIVATE_BUILD_DESC="sailfish-user 7.1.2 NZH54D 4146044 release-keys"
