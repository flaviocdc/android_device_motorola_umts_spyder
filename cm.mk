# Inherit device configuration for VZW Droid RAZR.
$(call inherit-product, device/motorola/umts_spyder/device_umts_spyder.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_umts_spyder
PRODUCT_BRAND := RTGB
PRODUCT_DEVICE := umts_spyder
PRODUCT_MODEL := XT910
PRODUCT_MANUFACTURER := MOTO
PRODUCT_SFX := umts
ANDROID_VERSION := 4.0.4_r1.2
#MOTOROLA_BUILD_ID := 6.7.6-226_SPU-DE_TA-2
MOTOROLA_BUILD_ID := IMM76D
MOTOROLA_SOFTWARE_VERSION := 6.76.226.3
DEVELOPER_NAME := dhacker29
DEVELOPER_HOST := rombot.droidhive.com
DEVELOPMENT_STAGE := Beta
TARGET_BOOTANIMATION_NAME := vertical-540x960

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
ACT_DATE := $(shell date +%F/%R)

PRODUCT_BUILD_PROP_OVERRIDES += \
   BUILD_ID=${MOTOROLA_BUILD_ID} \
   PRODUCT_NAME=${PRODUCT_DEVICE}_${PRODUCT_SFX} \
   BUILD_NUMBER=${DATE} \
   TARGET_DEVICE=${PRODUCT_DEVICE} \
   TARGET_BUILD_TYPE=user \
   BUILD_VERSION_TAGS=release-keys \
   BUILD_DISPLAY_ID=ICS_${DEVELOPMENT_STAGE}_${MOTOROLA_BUILD_ID} \
   BUILD_FINGERPRINT=${PRODUCT_BRAND}/${PRODUCT_DEVICE}_${PRODUCT_SFX}/${PRODUCT_DEVICE}:${ANDROID_VERSION}/${MOTOROLA_BUILD_ID}/${DATE}:user/release-keys \
   PRIVATE_BUILD_DESC="${PRODUCT_DEVICE}-user ${ANDROID_VERSION} ${MOTOROLA_BUILD_ID} ${DATE} release-keys" \
   BUILD_UTC_DATE= \
   USER=${DEVELOPER_NAME} \
   BUILD_HOST=${DEVELOPER_HOST} \
   PRODUCT_DEFAULT_LANGUAGE=en \
   PRODUCT_DEFAULT_REGION=US \
