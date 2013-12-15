Basic Android System Service - SDK Add-On
=========================================

https://github.com/gibsson/basic_sdk_addon

This project demonstrates how to put together a simple SDK Add-on for Android Open Source Project (AOSP).

This has been inspired from the more featured Marakana Log Service Client example:
https://github.com/twitter-university/alpha_sdk_addon

Clone into aosp/device/gibsson/basic_sdk_addon

In order to build the add-on you just need to type the following command:
`AOSP$ make PRODUCT-basic_sdk_addon-sdk_addon`

The result of it will be an archive located in `out/host/linux-x86/sdk_addon/`

For this feature to be added into your SDK, an XML file must be created as a repository manifest.
An example is provided in this git repository (`addon.xml`). This latter has been generated as follows:
```
AOSP$ development/build/tools/mk_sdk_repo_xml.sh  out/host/linux-x86/sdk_addon/addon.xml \
prebuilts/devtools/repository/sdk-addon-1.xsd  add-on  any \
out/host/linux-x86/sdk_addon/basic_sdk_addon-eng.gibsson-linux-x86.zip:basic_sdk_addon_api-19_r1.zip

```
Then the location of the file must be added as a User Defined Add-On Site.
The *Basic Add-On* should now be listed as an available package to be installed.
Once everything is setup properly, you can create an application that take advantage of the new API.

One sample application is provided:
https://github.com/gibsson/BasicClient

