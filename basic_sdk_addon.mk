# List of apps and optional libraries to put in the add-on system image
PRODUCT_PACKAGES := \
    com.gibsson.basic.service.lib \
    com.gibsson.basic.service.lib.xml \
    BasicServiceApp

# The name of this add-on (for the SDK)
PRODUCT_SDK_ADDON_NAME := basic_sdk_addon

# Copy the following files for this add-on's SDK
PRODUCT_SDK_ADDON_COPY_FILES := \
	$(LOCAL_PATH)/manifest.ini:manifest.ini

# Copy the jar files for the libraries (APIs) exposed in this add-on's SDK
PRODUCT_SDK_ADDON_COPY_MODULES := \
	com.gibsson.basic.service.lib:libs/com.gibsson.basic.service.lib.jar

PRODUCT_SDK_ADDON_STUB_DEFS := $(LOCAL_PATH)/basic_sdk_addon_stub_defs.txt

# Define the name of the documentation to generate for this add-on's SDK
PRODUCT_SDK_ADDON_DOC_MODULES := \
	com.gibsson.basic.service.lib_doc 

# This add-on extends the default sdk product.
$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk.mk)

# The name of this add-on (for the build system)
# Use 'make PRODUCT-<PRODUCT_NAME>-sdk_addon' to build the add-on, 
# so in this case, we would run 'make PRODUCT-basic_sdk_addon-sdk_addon'
PRODUCT_NAME := basic_sdk_addon
PRODUCT_MODEL := Basic Service SDK Addon Image
