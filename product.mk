# Enable Google Assistant
PRODUCT_PROPERTY_OVERRIDES := \
    ro.opa.eligible_device=true

ifeq ($(SIGNED_BUILD),true)
# Use own keys
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey
# Use := instead of += to remove Lineage's keys
PRODUCT_EXTRA_RECOVERY_KEYS := vendor/certs/releasekey
endif

ifeq ($(WITH_GAPPS),true)

# mindthegapps
$(call inherit-product, vendor/gapps/common/common-vendor.mk)

endif

# Recovery ADB keys
PRODUCT_COPY_FILES += \
    vendor/extra/adb_keys:recovery/root/adb_keys

# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

# Use own updater
PRODUCT_PROPERTY_OVERRIDES += lineage.updater.uri=https://lineage.stricted.net/api/v1/{device}/{type}/{incr}
