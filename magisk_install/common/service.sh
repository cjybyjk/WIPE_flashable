#!/system/bin/sh
# Project WIPE support
powercfg `cat /sdcard/wipe_mode`
if [ -f "/system/etc/init.qcom.post_boot.sh" ]; then
	rm -f /dev/project_wipe_runonce
fi
