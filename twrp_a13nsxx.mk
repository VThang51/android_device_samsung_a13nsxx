# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a13nsxx/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a13nsxx/recovery/root,recovery/root)

# Device identifier
PRODUCT_RELEASE_NAME := a13nsxx
PRODUCT_DEVICE := a13nsxx
PRODUCT_NAME := twrp_a13nsxx
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A13
PRODUCT_MANUFACTURER := samsung

