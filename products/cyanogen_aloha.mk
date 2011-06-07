$(call inherit-product, build/target/product/full_base.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Inherit AOSP device configuration for legend.
$(call inherit-product, device/lge/aloha/device_aloha.mk)

# Include GSM stuff
#$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include FM-Radio stuff (does not work at this moment)
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_BRAND := LGE
PRODUCT_DEVICE := aloha
PRODUCT_MODEL := Ally
PRODUCT_MANUFACTURER := LGE
PRODUCT_NAME := cyanogen_aloha
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83D BUILD_DISPLAY_ID=GRJ22 PRODUCT_NAME=aloha BUILD_FINGERPRINT=verizon/aloha/aloha/aloha:2.2.1/FRG83D/eng.lge.20101218.151114:user/release-keys PRODUCT_BRAND=verizon TARGET_BUILD_TYPE=eng BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="aloha-user 2.2.1 FRG83D eng.lge.20101218.151114 release-keys" PRODUCT_MODEL=Ally PRODUCT_MANUFACTURER=LGE

# Live wallpaper packages
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        VisualizationWallpapers

#CYANOGEN_NIGHTLY := true

ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-aloha-gnm
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC0-aloha-gnm
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-RC0-aloha-gnm
    endif
endif

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

