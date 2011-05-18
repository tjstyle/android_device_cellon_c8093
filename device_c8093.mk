##Device Configuration for OEM Cellon C8093 variant.
#
#Known device variant:
#-Spice Mi-310
#-CSL Mi-320

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/cellon/c8093/c8093-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/cellon/c8093/overlay

# HAL libs and other system binaries
PRODUCT_PACKAGES += \
    hwprops \
    copybit.c8093 \
    gralloc.c8093 \
    libOmxCore \
#    gps.c8093 \
#    abtfilt \

# Live wallpaper packages
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Board-specific init
PRODUCT_COPY_FILES += \
    device/cellon/c8093/ueventd.qct.rc:root/ueventd.qct.rc \
    device/cellon/c8093/init.qcom.rc:root/init.qcom.rc

## RIL related stuff
PRODUCT_COPY_FILES += \
    vendor/cellon/c8093/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/cellon/c8093/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/cellon/c8093/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/cellon/c8093/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/cellon/c8093/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/cellon/c8093/proprietary/lib/libwms.so:system/lib/libwms.so \
    vendor/cellon/c8093/proprietary/lib/libnv.so:system/lib/libnv.so \
    vendor/cellon/c8093/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
    vendor/cellon/c8093/proprietary/lib/libdss.so:system/lib/libdss.so \
    vendor/cellon/c8093/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    vendor/cellon/c8093/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    vendor/cellon/c8093/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/cellon/c8093/proprietary/lib/libauth.so:system/lib/libauth.so \
    vendor/cellon/c8093/proprietary/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/cellon/c8093/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    vendor/cellon/c8093/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    vendor/cellon/c8093/proprietary/lib/libcm.so:system/lib/libcm.so \
    vendor/cellon/c8093/proprietary/lib/libdll.so:system/lib/libdll.so \
    vendor/cellon/c8093/proprietary/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/cellon/c8093/proprietary/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so

## OMX proprietaries
PRODUCT_COPY_FILES += \
    vendor/cellon/c8093/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/cellon/c8093/proprietary/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/cellon/c8093/proprietary/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/cellon/c8093/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/cellon/c8093/proprietary/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
    vendor/cellon/c8093/proprietary/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/cellon/c8093/proprietary/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/cellon/c8093/proprietary/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/cellon/c8093/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/cellon/c8093/proprietary/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/cellon/c8093/proprietary/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/cellon/c8093/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/cellon/c8093/proprietary/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/cellon/c8093/proprietary/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/cellon/c8093/proprietary/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/cellon/c8093/proprietary/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/cellon/c8093/proprietary/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

## Camera proprietaries
PRODUCT_COPY_FILES += \
    vendor/cellon/c8093/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/cellon/c8093/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/cellon/c8093/proprietary/lib/libmmipl.so:system/lib/libmmipl.so

## Wifi module
PRODUCT_COPY_FILES += \
    device/cellon/c8093/prebuilt/ar6000.ko:root/ar6000.ko \
    device/cellon/c8093/prebuilt/test_noncb_oemrapi.ko:root/test_noncb_oemrapi.ko

## Atheros AR6002 firmware
PRODUCT_COPY_FILES += \
    vendor/cellon/c8093/proprietary/wifi/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
    vendor/cellon/c8093/proprietary/wifi/data.patch.hw2_0.bin:system/wifi/data.patch.hw2_0.bin \
    vendor/cellon/c8093/proprietary/wifi/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
    vendor/cellon/c8093/proprietary/wifi/eeprom.bin:system/wifi/eeprom.bin \
    vendor/cellon/c8093/proprietary/wifi/eeprom.data:system/wifi/eeprom.data \
    vendor/cellon/c8093/proprietary/wifi/softmac:system/wifi/softmac \
    vendor/cellon/c8093/proprietary/wifi/wpa_supplicant.sh:system/wifi/wpa_supplicant.sh \
    vendor/cellon/c8093/proprietary/wifi/dhcpcd.sh:system/wifi/dhcpcd.sh \
    vendor/cellon/c8093/proprietary/wifi/calData_ar6102_15dBm.bin:system/wifi/calData_ar6102_15dBm.bin

## Other libraries and proprietary binaries
PRODUCT_COPY_FILES += \
    device/cellon/c8093/spn-conf.xml:system/etc/spn-conf.xml \
    device/cellon/c8093/prebuilt/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/cellon/c8093/prebuilt/init.athwlan.sh:system/etc/init.athwlan.sh \
    device/cellon/c8093/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh \
    vendor/cellon/c8093/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    vendor/cellon/c8093/proprietary/bin/CKPD-daemon:system/bin/CKPD-daemon \
    vendor/cellon/c8093/proprietary/bin/port-bridge:system/bin/port-bridge \
    vendor/cellon/c8093/proprietary/bin/memsicd:system/bin/memsicd \
    vendor/cellon/c8093/proprietary/lib/hw/sensors.7x27.so:system/lib/hw/sensors.7x27.so \
    vendor/cellon/c8093/proprietary/lib/hw/lights.msm7k.so:system/lib/hw/lights.c8093.so \
    vendor/cellon/c8093/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \
    vendor/cellon/c8093/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
#    vendor/cellon/c8093/proprietary/bin/wlan_tool:system/bin/wlan_tool 

## EGL
PRODUCT_COPY_FILES += \
    vendor/cellon/c8093/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    vendor/cellon/c8093/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/cellon/c8093/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/cellon/c8093/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/cellon/c8093/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/cellon/c8093/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/cellon/c8093/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/cellon/c8093/proprietary/lib/libgsl.so:system/lib/libgsl.so \

PRODUCT_COPY_FILES += \
    device/cellon/c8093/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/cellon/c8093/vold.fstab:system/etc/vold.fstab \
    device/cellon/c8093/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/cellon/c8093/7k_ffa_keypad.kl:system/usr/keylayout/7k_ffa_keypad.kl \
    device/cellon/c8093/media_profiles.xml:system/etc/media_profiles.xml \

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/cellon/c8093/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := c8093
PRODUCT_DEVICE := c8093
PRODUCT_MODEL := Cellon C8093
