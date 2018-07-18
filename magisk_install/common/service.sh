#!/system/bin/sh
# Project WIPE support
MODE=`cat /sdcard/wipe_mode`
[ "" = "$MODE" ] && MODE=`cat /data/media/0/wipe_mode`
[ ! "disabled" = "$MODE" ] && powercfg $MODE > /dev/project_wipe_state
while read pathtofile
	do
    if [ -f "$pathtofile" ]; then
	    rm -f /dev/.project_wipe
	    rm -f /dev/project_wipe_runonce
    fi
done < ./list_of_magisk
