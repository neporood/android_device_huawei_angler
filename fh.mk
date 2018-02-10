# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common stuff.
$(call inherit-product, vendor/fh/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)
$(call inherit-product, vendor/nepo/my-apps.mk)

# Disable default camera (CNM)
DISABLE_CNM := true

# Device identifier. This must come after all inclusions
PRODUCT_NAME := fh_angler
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 6P

TARGET_VENDOR := huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:8.1.0/OPM3.171019.014/4503998:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 8.1.0 OPM3.171019.014 4503998 release-keys"

