# WIPE_flashable
A script for flash [Project_WIPE](https://github.com/yc9559/cpufreq-interactive-opt) into your device

### Version 0603.1

### Thanks to
[@yc9559](https://github.com/yc9559)

### How to use
#### 刷入 (Flash)
-   下载zip到你的设备中 
    (Download zip to your device.)
-   重启到Recovery模式下并刷入zip
    (Reboot to recovery mode and flash it.)
#### 更改模式 (Change Mode)
##### 自动应用 (Apply on boot)
-   在终端执行命令
	(Run command in terminal):
	```bash
		echo "powersave" > /sdcard/wipe_mode #省电
		echo "balance" > /sdcard/wipe_mode #平衡
		echo "performance" > /sdcard/wipe_mode #性能
		echo "fast" > /sdcard/wipe_mode #低延迟
	```

##### 临时应用 (Temporary Apply)
-   在终端以root身份执行命令
    (Run command as root in terminal): 
    ```bash
		powercfg powersave #省电
		powercfg balance #平衡
		powercfg performance #性能
		powercfg fast #低延迟
    ```

[下载卡刷包 (Download the flashable ZIP)](https://github.com/cjybyjk/WIPE_flashable/releases)
