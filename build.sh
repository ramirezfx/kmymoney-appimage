#!/bin/bash
DIST=bionic
WORKDIR=KMyMoney
rm -Rf $WORKDIR
rm kmymoney.yml
rm pkg2appimage-1807-x86_64.AppImage
cp kmymoney.yml.template kmymoney.yml
sed -i "s/DIST/$DIST/g" "kmymoney.yml"
wget https://github.com/AppImage/pkg2appimage/releases/download/continuous/pkg2appimage-1807-x86_64.AppImage
chmod 700 pkg2appimage-1807-x86_64.AppImage
./pkg2appimage-1807-x86_64.AppImage kmymoney.yml
