## 修改密码
sed -i 's/root::0:0:99999:7:::/root:$1$xUooaZpA$6zs50xt4ac9sJXiYpycT3\/:19338:0:99999:7:::/g' package/base-files/files/etc/shadow

## 添加源和软件
#echo 'src-git xiangfeidexiaohuo https://github.com/xiangfeidexiaohuo/openwrt-packages;master' >> feeds.conf.default
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/linkease package/linkease
svn co https://github.com/xiangfeidexiaohuo/openwrt-packages/trunk/jerrykuku/luci-theme-argon package/luci-theme-argon
# luci-app-openclash
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
rm -rf package/luci-app-openclash/.svn
