# Enable Google Assistant
PRODUCT_PROPERTY_OVERRIDES := \
    ro.opa.eligible_device=true

ifeq ($(SIGNED_BUILD),true)
# Use own keys
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/certs/releasekey
# Use := instead of += to remove Lineage's keys
PRODUCT_EXTRA_RECOVERY_KEYS := vendor/certs/releasekey
endif

# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/extra/overlay

# Use own updater
PRODUCT_PROPERTY_OVERRIDES += lineage.updater.uri=https://lineage.stricted.net/api/v1/{device}/{type}/{incr}
