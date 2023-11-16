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
#sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

# 取消Lean大登陆密码
# sed -i 's/^\(.*99999\)/#&/' package/lean/default-settings/files/zzz-default-settings
 

# 拉取PassWall源码
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall/packages
#git clone -b packages https://github.com/lxhao61/openwrt-passwall.git package/passwall/packages
#cd package/passwall/packages
#git checkout c189a68728d6bb65d9fb4b47fdacea3ba970a624
#cd -
git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall/luci
#git clone -b luci https://github.com/lxhao61/openwrt-passwall.git package/passwall/luci
#cd package/passwall/luci
#git checkout d1e618220a9a0a4b73d536101f452a2f4cf14861
#cd -

# 拉取ShadowSocksR Plus+源码
git clone -b master https://github.com/fw876/helloworld.git package/helloworld
git clone  https://github.com/Zane-E/luci-app-adguardhome.git  package/luci-app-adguardhome
# 拉取luci-app-smartdns插件
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns package/lienol/luci-app-smartdns

# 删除原版luci-app-softethervpn插件
#rm -rf feeds/luci/applications/luci-app-softethervpn

# 拉取luci-app-softethervpn插件
#svn co https://github.com/lxhao61/openwrt-plugin/trunk/package/lean/luci-app-softethervpn feeds/luci/applications/luci-app-softethervpn
