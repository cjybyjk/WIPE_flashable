#!/system/bin/sh
# Project WIPE support
SEstatus=`getenforce`
if [ -f '/sdcard/wipe_mode' ]; then
    powercfg `cat /sdcard/wipe_mode`
else
    powercfg `cat /data/media/0/wipe_mode`
fi
if [[ -f "/system/etc/init.qcom.post_boot.sh" ]] || \
	[[ -f "/vendor/bin/init.qcom.post_boot.sh" ]] ; then
	rm -f /dev/.project_wipe
	rm -f /dev/project_wipe_runonce
fi
setenforce $SEstatus
