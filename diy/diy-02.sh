#!/bin/bash

#1. 默认ip
#sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

#2 修改密码
sed -i 's/root::0:0:99999:7:::/root:$1$SOP5eWTA$fJV8ty3QohO0chErhlxCm1:18775:0:99999:7:::/g' package/base-files/files/etc/shadow

#3 修改默认主题
sed -i 's/bootstrap/opentopd/' feeds/luci/collections/luci/Makefile

# 整理
#rm -rf feeds/luci/themes/luci-theme-argon
