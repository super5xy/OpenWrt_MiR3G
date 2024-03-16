#!/bin/bash
git clone  https://github.com/bigbugcc/OpenwrtApp package/OpenwrtApp
git clone  https://github.com/destan19/OpenAppFilter package/OpenAppFilter
git clone  https://github.com/zzsj0928/luci-app-pushbot package/luci-app-pushbot

find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
find ./ | grep Makefile | grep mosdns | xargs rm -f
find ./ | grep Makefile | grep v2dat | xargs rm -f

git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang