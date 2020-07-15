#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# 取消helloworld源注释（ssr-plus）
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加lienol大luci源
#sed -i '$a src-git luci https://github.com/Lienol/openwrt-luci.git;dev-18.06' feeds.conf.default
