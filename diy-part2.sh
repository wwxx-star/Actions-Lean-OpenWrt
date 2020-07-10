#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh的
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# 取消Lean大登陆密码
sed -i 's/^\(.*99999\)/#&/' package/lean/default-settings/files/zzz-default-settings

# 修正Lean大发行版软件源（注释掉原修改）
#sed -i 's/^\(.*downloads.openwrt.org\)/#&/' package/lean/default-settings/files/zzz-default-settings
#sed -i 's/^\(.*http:\)/#&/' package/lean/default-settings/files/zzz-default-settings
#sed -i 's/^\(.*openwrt_luci\)/#&/' package/lean/default-settings/files/zzz-default-settings

# 下载lienol大uci-app-smartdns插件
svn co https://github.com/Lienol/openwrt-luci/trunk/applications/luci-app-smartdns package/lienol/luci-app-smartdns

# lienol大的passwall插件及依赖
svn co https://github.com/Lienol/openwrt-package/trunk/package/brook package/lienol/brook
svn co https://github.com/Lienol/openwrt-package/trunk/package/chinadns-ng package/lienol/chinadns-ng
svn co https://github.com/Lienol/openwrt-package/trunk/package/openssl1.1 package/lienol/openssl1.1
svn co https://github.com/Lienol/openwrt-package/trunk/package/tcping package/lienol/tcping
#svn co https://github.com/Lienol/openwrt-package/trunk/package/dns2socks package/lienol/dns2socks
#svn co https://github.com/Lienol/openwrt-package/trunk/package/ipt2socks package/lienol/ipt2socks
#svn co https://github.com/Lienol/openwrt-package/trunk/package/pdnsd-alt package/lienol/pdnsd-alt
#svn co https://github.com/Lienol/openwrt-package/trunk/package/kcptun package/lienol/kcptun
#svn co https://github.com/Lienol/openwrt-package/trunk/package/shadowsocksr-libev package/lienol/shadowsocksr-libev
#svn co https://github.com/Lienol/openwrt-package/trunk/package/v2ray-plugin package/lienol/v2ray-plugin
#svn co https://github.com/Lienol/openwrt-package/trunk/package/simple-obfs package/lienol/simple-obfs
#svn co https://github.com/Lienol/openwrt-package/trunk/package/v2ray package/lienol/v2ray
#svn co https://github.com/Lienol/openwrt-package/trunk/package/trojan package/lienol/trojan
svn co https://github.com/Lienol/openwrt-package/trunk/package/trojan-go package/lienol/trojan-go
svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-passwall package/lienol/luci-app-passwall
