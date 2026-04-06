#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt

# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# 文件名：diy-part1.sh
# 描述：OpenWrt DIY脚本第一部分（更新feeds之前）

# 例如：
# Uncomment a feed source / 取消注释一个软件包源
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source / 添加自定义软件包源到feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

