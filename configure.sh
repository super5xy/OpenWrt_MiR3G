#!/bin/bash
# Modify default system settings

# 修改默认IP为192.168.15.1
sed -i 's/192.168.1.1/192.168.15.1/g' package/base-files/files/bin/config_generate

echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> feeds.conf.default
echo "src-git small https://github.com/kenzok8/small" >> feeds.conf.default