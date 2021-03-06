# Copyright (C) 2017 Screw'd AOSP
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

PRODUCT_PACKAGES += \
    Stk

#AOSP Messenger
PRODUCT_PACKAGES += \
    messaging

#Gallery2
PRODUCT_PACKAGES += \
    Gallery2

#Default launcher
PRODUCT_PACKAGES += \
    Launcher3

#OmniStyle 
PRODUCT_PACKAGES += \
   OmniStyle

#OmniSwitch 
PRODUCT_PACKAGES += \
   OmniSwitch

#OmniJaws 
PRODUCT_PACKAGES += \
    OmniJaws

#Lean
PRODUCT_PACKAGES += \
    Lean

# Turbo
PRODUCT_PACKAGES += \
    Turbo

# DU Utils Library
#PRODUCT_PACKAGES += \
#    org.dirtyunicorns.utils

#PRODUCT_BOOT_JARS += \
#    org.dirtyunicorns.utils

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs

ifeq ($(DEFAULT_ROOT_METHOD),magisk)
# Copy Magisk zip
PRODUCT_COPY_FILES += \
    vendor/screwd/prebuilt/zip/magisk.zip:system/addon.d/magisk.zip

else ifeq ($(DEFAULT_ROOT_METHOD),supersu)
PRODUCT_PACKAGES += \
    Busybox

PRODUCT_COPY_FILES += \
    vendor/screwd/prebuilt/zip/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/screwd/prebuilt/etc/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon  
endif

# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# Themes
# Accents
#PRODUCT_PACKAGES += \
#    PixelTheme \
#    AmberAccent \
#    BlackAccent \
#    BlueAccent \
#    BlueGreyAccent \
#    BrownAccent \
#    CyanAccent \
#    DeepOrangeAccent \
#    DeepPurpleAccent \
#    GreenAccent \
#    GreyAccent \
#    IndigoAccent \
#    LightBlueAccent \
#    LightGreenAccent \
#    LimeAccent \
#    OrangeAccent \
#    PinkAccent \
#    PurpleAccent \
#    RedAccent \
#    TealAccent \
#    YellowAccent \
#    WhiteAccent

# UI Variants
#PRODUCT_PACKAGES += \
#    SystemDarkTheme \
#    SettingsDarkTheme \
#    DuiDarkTheme \
#    SystemBlackTheme \
#    SettingsBlackTheme \
#    DuiBlackTheme

# Fonts
#PRODUCT_PACKAGES += \
#    DU-Fonts



    
