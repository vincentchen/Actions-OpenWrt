#!/bin/bash
#=================================================
#   Description: DIY script
#   Lisence: MIT
#   Author: P3TERX
#   Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i '14s/bootstrap/argon/' feeds/luci/collections/luci/Makefile
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/MeIsReallyBa/k2p-openwrt-mt7615_5.0.2.0.git package/k2p-openwrt-mt7615_5.0.2.0
./scripts/feeds install -a
