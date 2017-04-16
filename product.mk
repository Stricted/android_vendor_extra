# ThemeInterfacer
PRODUCT_PACKAGES += \
    ThemeInterfacer \
    projekt.substratum.theme.xml

# Add overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_PROPERTY_OVERRIDES := \
    ro.opa.eligible_device=true
