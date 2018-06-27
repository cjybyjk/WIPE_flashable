#!/system/bin/sh
# Project WIPE support
if [ ! -f "/system/etc/init.qcom.post_boot.sh" ]; then
	powercfg `cat /sdcard/wipe_mode`
fi
