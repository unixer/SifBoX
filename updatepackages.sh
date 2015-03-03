#!/bin/bash

. packages/multimedia/vdr/meta
VDR_REV=1

VDRDIR="`ls -d packages/multimedia/*`"
for dir in $VDRDIR; do
  DIR="`ls -d packages/multimedia/*/meta | tr ' ' '\n'`" 
  . $dir/meta
  PLG_REV=$PKG_REV
  echo $PLG_REV $VDR_REV $PKG_REV
  sed -i "s|PKG_REV=14|PKG_REV=1|" $DIR
done
