#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# 取消Lean大登陆密码
sed -i 's/^\(.*99999\)/#&/' package/lean/default-settings/files/zzz-default-settings

# 删除原版trojan插件
#rm -rf package/lean/trojan

# 拉取luci-app-smartdns插件
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns package/lienol/luci-app-smartdns

# 拉取passwall插件及依赖
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/brook package/lienol/brook
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/chinadns-ng package/lienol/chinadns-ng
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/openssl1.1 package/lienol/openssl1.1
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/tcping package/lienol/tcping
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/dns2socks package/lienol/dns2socks
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/ipt2socks package/lienol/ipt2socks
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/pdnsd-alt package/lienol/pdnsd-alt
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/kcptun package/lienol/kcptun
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/shadowsocksr-libev package/lienol/shadowsocksr-libev
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/v2ray package/lienol/v2ray
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/simple-obfs package/lienol/simple-obfs
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/v2ray-plugin package/lienol/v2ray-plugin
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan package/lienol/trojan
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/ssocks package/lienol/ssocks
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go package/lienol/trojan-go
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-plus package/lienol/trojan-plus
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/naiveproxy package/lienol/naiveproxy
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall package/lienol/luci-app-passwall
