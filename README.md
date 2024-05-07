# OpenWrt_Built
A template for building OpenWrt with GitHub Actions

云编译OpenWrt，选自openwrt官方固件及Lean、immortalwrt、Lienol三位大佬的优秀三方固件。

默认仅支持ARMv8架构的设备，例如Phicomm N1(amlogic s905d)、贝壳云(rockchip rk3328)、我家云(rockchip rk3328)、微加云(allwinner H6)等。

由于固件opkg源的更改，搭载Cortex-A53处理器的设备能得到更好的使用体验。

另配有docker镜像，供Arbian系统用户进行使用。

（Phicomm N1设备已通过测试）

————————————————————————————————————————

纯原版固件，仅具备正常使用所需的插件，有其他软件需求的话请进入设备-软件包进行下载或使用personal分支固件（该固件自带晶晨宝盒、docker、adguardhome、ddns-go、mosdns、openclash）