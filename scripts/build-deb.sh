#!/bin/bash
set -e

readonly TARGET=target
readonly SOURCE=src

mkdir "$TARGET"

# Control File
cp -vr $SOURCE/DEBIAN $TARGET

# Binary File
mkdir -p $TARGET/usr/bin
cp -vr $SOURCE/bin $TARGET/usr
chmod 755 $TARGET/usr/bin/*

# Man Pages
mkdir -p $TARGET/usr/share/man/man1/
pandoc $SOURCE/md/siakhooi-devutils-echo-colors.1.md -s -t man | gzip -9 >$TARGET/usr/share/man/man1/siakhooi-devutils-echo-colors.1.gz

## Create links
(
  cd $TARGET/usr/share/man/man1/
  ln -s siakhooi-devutils-echo-colors.1.gz echo.blue.1.gz
  ln -s siakhooi-devutils-echo-colors.1.gz echo.cyan.1.gz
  ln -s siakhooi-devutils-echo-colors.1.gz echo.green.1.gz
  ln -s siakhooi-devutils-echo-colors.1.gz echo.magenta.1.gz
  ln -s siakhooi-devutils-echo-colors.1.gz echo.red.1.gz
  ln -s siakhooi-devutils-echo-colors.1.gz echo.yellow.1.gz
  ln -s siakhooi-devutils-echo-colors.1.gz echo.grey.1.gz
  ln -s siakhooi-devutils-echo-colors.1.gz clear-colors.1.gz
)

fakeroot dpkg-deb --build -Zxz $TARGET
dpkg-name ${TARGET}.deb

DEBFILE=$(ls ./*.deb)

sha256sum "$DEBFILE" >"$DEBFILE.sha256sum"
sha512sum "$DEBFILE" >"$DEBFILE.sha512sum"

dpkg --contents "$DEBFILE"
