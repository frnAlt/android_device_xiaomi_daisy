#!/bin/bash
#
# Vendor setup for Xiaomi Daisy (Android 15 / LineageOS 22.2)
# Maintainer: Farhan
#

echo "[*] Syncing device & vendor trees for Xiaomi Daisy..."

# Device trees
#git clone --depth=1 --branch lineage-22.2-re https://github.com/ximi-daisy-test/android_device_xiaomi_daisy device/xiaomi/daisy
git clone --depth=1 --branch lineage-22.2-re https://github.com/ximi-daisy-test/android_device_xiaomi_msm8953-common device/xiaomi/msm8953-common

# Vendor trees
git clone --depth=1 --branch lineage-22.2 https://github.com/ximi-daisy-test/proprietary_vendor_xiaomi_daisy vendor/xiaomi/daisy
git clone --depth=1 --branch lineage-22.2 https://github.com/ximi-daisy-test/proprietary_vendor_xiaomi_msm8953-common vendor/xiaomi/msm8953-common

# Fingerprint interfaces
git clone --depth=1 --branch lineage-21 https://github.com/ximi-daisy-test/android_vendor_fingerprint_opensource_interfaces vendor/fingerprint/opensource/interfaces

# Hardware dependencies
git clone --depth=1 --branch lineage-22.2 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi
git clone --depth=1 --branch lineage-22.2 https://github.com/LineageOS/android_hardware_sony_timekeep hardware/sony/timekeep

# Bootable recovery
echo "[*] Replacing bootable/recovery with custom tree..."
rm -rf bootable/recovery
git clone --depth=1 --branch lineage-22.2-re https://github.com/ximi-daisy-test/android_bootable_recovery bootable/recovery

echo "[✓] Xiaomi Daisy trees synced successfully!"
