# TWRP device tree for Samsung A13 aka a13xx

## Platform source
Available at https://github.com/VThang51/android_platform_samsung_a13xx

## Kernel source 
Available at https://github.com/VThang51/android_kernel_samsung_a13xx

## How to build
This was tested and it's fully compatible with [minimal manifest twrp](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp).
1. Set up the build environment following instructions from [here](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/blob/twrp-12.1/README.md#getting-started)
2. In the root folder of cloned repo you need to clone the device tree:
```bash
git clone -b android-13.0 https://github.com/VThang51/android_device_samsung_a13nsxx.git device/samsung/a13nsxx
```
3. To build:
```bash
export ALLOW_MISSING_DEPENDENCIES=true && . build/envsetup.sh && lunch twrp_a13nsxx-eng && mka recoveryimage -j128
```
