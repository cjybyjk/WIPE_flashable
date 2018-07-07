#!/system/bin/sh
# Project WIPE support
SEstatus=`getenforce`
MODE=`cat /sdcard/wipe_mode`
if [ "" = "$MODE" ]; then
    MODE=`cat /data/media/0/wipe_mode`
fi
if [ ! "disabled" = "$MODE" ]; then
    powercfg $MODE
fi
if [[ -f "/system/etc/init.qcom.post_boot.sh" ]] || \
	[[ -f "/vendor/bin/init.qcom.post_boot.sh" ]] ; then
	rm -f /dev/.project_wipe
	rm -f /dev/project_wipe_runonce
fi
setenforce $SEstatus
