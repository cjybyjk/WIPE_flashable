# Project WIPE support

RestoreSELinux=false
SEStatus=`getenforce`

MODE=`cat /data/wipe_mode`
[ "" == "$MODE" ] && MODE=`cat /sdcard/wipe_mode`
[ "" == "$MODE" ] && MODE=`cat /data/media/0/wipe_mode`
[ "disabled" == "$MODE" ] && exit 0
rm -f /dev/.project_wipe
rm -f /dev/project_wipe_runonce
powercfg $MODE > /dev/project_wipe_state

$RestoreSELinux && setenforce $SEStatus
