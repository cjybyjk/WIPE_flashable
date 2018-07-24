# Project WIPE support
MODE=`cat /sdcard/wipe_mode`
[ "" == "$MODE" ] && MODE=`cat /data/media/0/wipe_mode`
[ "disabled" == "$MODE" ] && exit 0
powercfg $MODE > /dev/project_wipe_state
