#!/bin/bash

. packages/multimedia/kodi/meta
VDR_REV=$PKG_REV

VDRDIR="`ls -d packages/*/kodi-*`"
for dir in $VDRDIR; do
  DIR="`ls -d packages/*/kodi-*/meta | tr ' ' '\n'`" 
  . $dir/meta
  PLG_REV=$PKG_REV
  echo $PLG_REV $VDR_REV $PKG_REV
  sed -i "s|PKG_REV=$PLG_REV|PKG_REV=$VDR_REV|" $DIR
done
