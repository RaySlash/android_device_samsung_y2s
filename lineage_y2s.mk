$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/y2s/device.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440
# vendor/lineage/config/common.mk

### LINEAGE
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_y2s
PRODUCT_DEVICE := y2s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G986B
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := G986B
PRODUCT_PDA_MODEL_VERSION := XXU4BTIB
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=y2sxx \
    PRODUCT_DEVICE=y2s \
    PRIVATE_BUILD_DESC="y2sxxx-user 10 QP1A.190711.020 G986BXXS5BTJ4 release-keys"

BUILD_FINGERPRINT := samsung/y2sxxx/y2s:10/QP1A.190711.020/G986BXXS5BTJ4:user/release-keys 

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.PDA=$(PRODUCT_PDA_VERSION)

ifneq ($(LINEAGE_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
endif
