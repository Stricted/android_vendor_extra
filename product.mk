ifeq ($(WITH_OMS),true)
# ThemeInterfacer
PRODUCT_PACKAGES += \
    ThemeInterfacer \
    projekt.substratum.theme.xml
endif

# Add overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_PROPERTY_OVERRIDES := \
    ro.opa.eligible_device=true
