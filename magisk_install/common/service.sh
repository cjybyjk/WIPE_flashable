#!/system/bin/sh
# Project WIPE support
SELinux=`getenforce`
MODE=`cat /sdcard/wipe_mode`
if [ "" = "$MODE" ]; then
    MODE=`cat /data/media/0/wipe_mode`
fi
if [ ! "disabled" = "$MODE" ]; then
    powercfg $MODE > /dev/project_wipe_state
fi
while read pathtofile
	do
    if [ -f "$pathtofile" ]; then
	    rm -f /dev/.project_wipe
	    rm -f /dev/project_wipe_runonce
    fi
done < ./list_of_magisk
setenforce $SELinux
