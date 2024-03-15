#!/bin/bash
set -xe

rm -rf /etc/yum.repos.d/*

myArray=("v10sp2" "v10sp1" "v7")

for str in ${myArray[@]}; do
  rm -rf /etc/yum.repos.d/kylin.repo
  cp "/src/repo/${str}_x86_64.repo" /etc/yum.repos.d/kylin.repo
  yum clean all
  yum makecache
  reposync -n --norepopath --repoid=ks10-adv-updates --arch=x86_64 -p "/mirror/os/kylin/${str}/updates/x86_64"
  reposync -n --norepopath --repoid=ks10-adv-os --arch=x86_64 -p "/mirror/os/kylin/${str}/base/x86_64"
  
  rm -rf /etc/yum.repos.d/kylin.repo
  cp "/src/repo/${str}_aarch64.repo" /etc/yum.repos.d/kylin.repo
  yum clean all
  yum makecache
  reposync -n --norepopath --repoid=ks10-adv-updates --arch=aarch64 -p "/mirror/os/kylin/${str}/updates/aarch64"
  reposync -n --norepopath --repoid=ks10-adv-os --arch=aarch64 -p "/mirror/os/kylin/${str}/base/aarch64"
done
