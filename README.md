_This device tree is based on Firmware SM-A135F region XXV_
## Other Source 
- [Kernel Source](https://github.com/VThang51/android_kernel_samsung_a13xx)
- [Platform Source](https://github.com/VThang51/android_platform_samsung_a13)

## How To Compile
1. Create a working directory at `~`
```bash
mkdir ~/TWRP && cd ~/TWRP
```

2. Initialize your local repository using AOSP tree to build TWRP
```bash
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
```
Or a more space-saving solution
```bash
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
```

3. Sync up
```bash
repo sync
```

4. Clone the device tree
```bash
git clone -b twrp-12.1 https://github.com/VThang51/android_device_samsung_a13nsxx.git device/samsung/a13nsxx
```

5. Build it
```bash
cd ~/TWRP && export ALLOW_MISSING_DEPENDENCIES=true && . build/envsetup.sh && lunch twrp_a13nsxx-eng && mka recoveryimage
```

6. Product Out
- Output: `~/TWRP/out/target/product/a13nsxx/recoveryimage.img`
## What was active in this TWRP device tree?
- `[A]` Active
- `[P]` Partially Active
- `[ ]` Not tested / Not working
```bash
Blocking checks
- [ ] Correct screen/recovery size
- [ ] Working Touch, screen
- [ ] Backup to internal/microSD
- [ ] Restore from internal/microSD
- [ ] Reboot to system
- [ ] ADB

Medium checks
- [ ] update.zip sideload
- [ ] UI colors (red/blue inversions)
- [ ] Screen goes off and on
- [ ] F2FS/EXT4 Support, exFAT/NTFS where supported
- [ ] All important partitions listed in mount/backup lists
- [ ] Backup/restore to/from external (USB-OTG) storage (not supported by the device)
- [ ] Backup/restore to/from adb (https://gerrit.omnirom.org/#/c/15943/)
- [ ] Decrypt /data
- [ ] Correct date

Minor checks
- [ ] MTP export
- [ ] Reboot to bootloader
- [ ] Reboot to recovery
- [ ] Poweroff
- [ ] Battery level
- [ ] Temperature
- [ ] Rncrypted backups
- [ ] Input devices via USB (USB-OTG)
- [ ] Keyboard, mouse and disks (not supported by the device)
- [ ] USB mass storage export
- [ ] Set brightness
- [ ] Vibrate
- [ ] Screenshot
- [ ] Partition SD card
```
