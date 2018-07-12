# Project WIPE support
MODE=`cat /sdcard/wipe_mode`
if [ "" = "$MODE" ]; then
    MODE=`cat /data/media/0/wipe_mode`
fi
if [ ! "disabled" = "$MODE" ]; then
    powercfg $MODE > /dev/project_wipe_state
fi
