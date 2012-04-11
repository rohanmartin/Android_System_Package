===============================================================================

BUILD SETUP HOW-TO
ANT Wireless in Android

===============================================================================

OVERVIEW

This is the general release for ANT support in Android.

Implementations using the BTIPS stack or external ANT devices will require a
different package.

-------------------------------------------------------------------------------

COMPONENTS

This repository contains:
- antradio_stack v0.8
- AntHalService v1.3.2
- ANTRadioService v2.8 [prebuilt]
- ant_app v1.1.1

ONLY if using a power type of "bluedroid", the following components are also
essential (see CONFIGURATION 3.b):

- bluedroid

-------------------------------------------------------------------------------

CONFIGURATION

1. Specify ANT Configuration:
   The board configuration files are located in device/<company>/<board>/
   (e.g. device/ti/blaze/)

   Add to BoardConfig.mk:
   a) Define that the board has ANT support:
      BOARD_ANT_WIRELESS_DEVICE := "<chip>"
      where "<chip>" is one of the following:
         "chip-B"
         "chip-C"
         "wl12xx"

   b) If required, define where the ANT power functions are:
      BOARD_ANT_WIRELESS_POWER := "<power>"
      where "<power>" is:
         not required for "chip-B"
         not required for "chip-C"
         "bluedroid" for "wl12xx"

   Add to device.mk:
   a) ANT PRODUCT_PACKAGE definition:
      $(call inherit-product, hardware/ant_wireless/ant-wireless.mk)

2. Place "hardware/ant_wireless/ant-wireless.mk" in the Android platform
   source.

3. Place the source/.apk's for each component in the Android platform source.
   a) Place this repository in the Android root directory.
     
   b) If the BOARD_ANT_WIRELESS_POWER is defined as "bluedroid", include the
      bluedroid modifications found in this package to your Android platform
      source.  Merge in to the Android root directory:
       bluedroid/system

-------------------------------------------------------------------------------

BUILD OUTPUT

/system/lib/libantradio.so
/system/app/AntHalService.apk
/system/app/ANTRadioService.apk

For debug version of the Android platform (this include userdebug and eng, but
not user):
/system/xbin/antradio_app

For BOARD_ANT_WIRELESS_POWER := "bluedroid"
/system/lib/libbluedroid.so (modified)

===============================================================================
