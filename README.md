# WIPE_flashable
A script for flash [Project_WIPE](https://github.com/yc9559/cpufreq-interactive-opt) into your device

### Thanks to
[@yc9559](https://github.com/yc9559)

### Version 0603.1

### How to use
#### 刷入 (Flash)
-   下载zip到你的设备中 
    (Download zip to your device.)
-   重启到Recovery模式下并刷入zip
    (Reboot to recovery mode and flash it.)
#### 更改模式 (Change Mode)
##### 自动应用 (Apply on boot)
-   使用文本编辑器打开**内部存储**根目录下的wipe_mode
    (Open wipe_mode in your **internal storage** by using text editor.)
-   修改其中的值，保存后重启
    (Change value on it,then save and reboot)
##### 临时应用 (Temporary Apply)
-   在终端以root身份执行命令
    (Run command as root in terminal): 
    ```shell
    powercfg MODE
    ```
-   MODE可以是这些值：
    (MODE can be these values)
###### ***可用的值 (Values available)*** :
    powersave balance performance fast


[下载卡刷包 (Download the flashable ZIP)](https://github.com/cjybyjk/WIPE_flashable/releases)
