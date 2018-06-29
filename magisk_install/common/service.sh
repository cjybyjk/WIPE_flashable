#!/system/bin/sh
# Project WIPE support
if [[ -f "/system/etc/init.qcom.post_boot.sh" ]] || \
	[[ -f "/vendor/bin/init.qcom.post_boot.sh" ]] || \
	[[ -f "/vendor/etc/init.qcom.post_boot.sh" ]] ; then
	exit 0
fi
powercfg `cat /sdcard/wipe_mode`