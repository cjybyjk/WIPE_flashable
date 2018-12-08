#!/system/bin/sh
MODDIR=${0%/*}
# Project WIPE support

# wait for boot complete
until [ "`getprop sys.boot_completed`" = "1" ]
do
sleep 10
done

#SELinux restore flag
RestoreSELinux=false
SEStatus=`getenforce`

# mode detect
MODE=`cat /data/wipe_mode`
[ "" == "$MODE" ] && MODE=`cat /sdcard/wipe_mode`
[ "" == "$MODE" ] && MODE=`cat /data/media/0/wipe_mode`
[ "disabled" == "$MODE" ] && exit 0

powercfg $MODE > /dev/project_wipe_state

# restore SELinux
$RestoreSELinux && setenforce $SEStatus
