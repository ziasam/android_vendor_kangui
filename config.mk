# Copyright (C) 2019 RevengeOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := vendor/revengeui

# build.prop entrys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wallpapers_loc_request_suw=true

# Fonts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml \
    $(LOCAL_PATH)/fonts/Aileron-Light.otf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Aileron-Light.otf \
    $(LOCAL_PATH)/fonts/Aileron-LightItalic.otf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Aileron-LightItalic.otf \
    $(LOCAL_PATH)/fonts/Aileron-Regular.otf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Aileron-Regular.otf \
    $(LOCAL_PATH)/fonts/Aileron-Italic.otf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Aileron-Italic.otf \
    $(LOCAL_PATH)/fonts/Aileron-SemiBold.otf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Aileron-SemiBold.otf \
    $(LOCAL_PATH)/fonts/Aileron-SemiBoldItalic.otf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Aileron-SemiBoldItalic.otf \
    $(LOCAL_PATH)/fonts/Aileron-Bold.otf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Aileron-Bold.otf \
    $(LOCAL_PATH)/fonts/Aileron-BoldItalic.otf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Aileron-BoldItalic.otf \
    $(LOCAL_PATH)/fonts/Inter-Light.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-Light.ttf \
    $(LOCAL_PATH)/fonts/Inter-LightItalic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-LightItalic.ttf \
    $(LOCAL_PATH)/fonts/Inter-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-Regular.ttf \
    $(LOCAL_PATH)/fonts/Inter-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-Italic.ttf \
    $(LOCAL_PATH)/fonts/Inter-Medium.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-Medium.ttf \
    $(LOCAL_PATH)/fonts/Inter-MediumItalic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-Medium.ttf \
    $(LOCAL_PATH)/fonts/Inter-Bold.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-Bold.ttf \
    $(LOCAL_PATH)/fonts/Inter-BoldItalic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-BoldItalic.ttf

PRODUCT_PACKAGES += \
    FontAileronOverlay \
    FontInterOverlay

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += $(LOCAL_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay/common/

# Bootanimation
ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
     PRODUCT_COPY_FILES += vendor/revengeui/media/bootanimation_720.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
     PRODUCT_COPY_FILES += vendor/revengeui/media/bootanimation_1080.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
     PRODUCT_COPY_FILES += vendor/revengeui/media/bootanimation_1440.zip:system/media/bootanimation.zip
else
    $(error "RevengeOS: TARGET_BOOT_ANIMATION_RES is undefined")
endif

# Apps
PRODUCT_PACKAGES += \
    ThemePicker

# Gradients
PRODUCT_PACKAGES += \
    ColorStyleSolid \
    GradientSkyline \
    GradientSublime

# Themes
PRODUCT_PACKAGES += \
    RevengeOSCustomisation
