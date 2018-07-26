#!/system/bin/sh
MODDIR=${0%/*}
# Project WIPE support
SEStatus=`getenforce`
MODE=`cat /sdcard/wipe_mode`
[ "" == "$MODE" ] && MODE=`cat /data/media/0/wipe_mode`
[ "disabled" == "$MODE" ] && exit 0
powercfg $MODE > /dev/project_wipe_state
while read pathtofile
	do
    if [ -f "$pathtofile" ]; then
	    rm -f /dev/.project_wipe
	    rm -f /dev/project_wipe_runonce
    fi
done < $MODDIR/list_of_magisk
setenforce $SEStatus
