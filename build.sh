#!/bin/sh
set -e

shellcheck src/bin/*

TARGET=target
SOURCE=src

mkdir "$TARGET"

# Control File
cp -vr $SOURCE/DEBIAN $TARGET

# Binary File
mkdir -p $TARGET/usr/bin
cp -vr $SOURCE/bin $TARGET/usr

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
)

dpkg --build $TARGET
dpkg-name ${TARGET}.deb

DEBFILE=$(ls ./*.deb)
dpkg --contents "$DEBFILE"
