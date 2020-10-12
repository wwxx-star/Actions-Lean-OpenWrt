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
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 取消helloworld源注释（ssr-plus）
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加lienol大luci源
#sed -i '$a src-git luci https://github.com/Lienol/openwrt-luci.git;dev-18.06' feeds.conf.default
