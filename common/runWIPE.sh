# Project WIPE support
SEStatus=`getenforce`
MODE=`cat /sdcard/wipe_mode`
[ "" == "$MODE" ] && MODE=`cat /data/media/0/wipe_mode`
[ "disabled" == "$MODE" ] && exit 0
rm -f /dev/.project_wipe
rm -f /dev/project_wipe_runonce
powercfg $MODE > /dev/project_wipe_state
setenforce $SEStatus
