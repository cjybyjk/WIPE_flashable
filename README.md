# WIPE_flashable
A script for flash [Project_WIPE](https://github.com/yc9559/cpufreq-interactive-opt) into your device

### Version 0603.2
好用的话记得给颗Star~

### Thanks to
[@yc9559](https://github.com/yc9559)

### How to use
#### 刷入 (Flash)
-   下载zip到你的设备中 
    (Download zip to your device.)
-   重启到Recovery模式下并刷入zip
    (Reboot to recovery mode and flash it.)
#### 更改模式 (Change Mode)
##### 自动应用 重启后生效 (Apply on boot)
-   在终端执行命令
	(Run command in terminal):
	```bash
	echo "powersave" > /sdcard/wipe_mode #省电
	echo "balance" > /sdcard/wipe_mode #平衡(默认)
	echo "performance" > /sdcard/wipe_mode #性能
	echo "fast" > /sdcard/wipe_mode #低延迟
	echo "disabled" > /sdcard/wipe_mode #停用
	```

##### 临时应用 立即生效 (Temporary Apply (NOW))
-   在终端以root身份执行命令
    (Run command as root in terminal): 
    ```bash
	powercfg powersave #省电
	powercfg balance #平衡
	powercfg performance #性能
	powercfg fast #低延迟
    ```
#### SELinux问题 (SELinux problem)
##### 如果这个脚本导致了SELinux问题(例如不正确的SELinux permissive),请按以下步骤操作
-	安装为magisk模块
	- 使用文本编辑器打开这些文件(如果存在) , 将 `RestoreSELinux=false` 改为 `RestoreSELinux=true`, 然后保存
		- /sbin/.core/img/prjWIPE/service.sh
		- /sbin/.core/img/prjWIPE/system/etc/init.qcom.post_boot.sh
		- /sbin/.core/img/prjWIPE/system/vendor/bin/init.qcom.post_boot.sh
-	传统安装方式
	- 使用文本编辑器打开这些文件(如果存在) , 将 `RestoreSELinux=false` 改为 `RestoreSELinux=true`, 然后保存
		- /system/etc/init.qcom.post_boot.sh
		- /vendor/bin/init.qcom.post_boot.sh

#### 卸载 (Uninstall)
-	下载 WIPE_Flashable Remover
	(Download WIPE_Flashable Remover.)
-   重启到Recovery模式下并刷入
    (Reboot to recovery mode and flash it.)

[下载卡刷包 (Download the flashable ZIP)](https://github.com/cjybyjk/WIPE_flashable/releases)
