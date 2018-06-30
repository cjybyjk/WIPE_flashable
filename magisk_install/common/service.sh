#!/system/bin/sh
# Project WIPE support
powercfg `cat /data/media/0/wipe_mode`
if [[ -f "/system/etc/init.qcom.post_boot.sh" ]] || \
	[[ -f "/vendor/bin/init.qcom.post_boot.sh" ]] ; then
	rm -f /dev/.project_wipe
	rm -f /dev/project_wipe_runonce
fi
