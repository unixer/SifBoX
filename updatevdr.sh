#!/bin/bash

. packages/vdr/meta
VDR_REV=$PKG_REV

VDRDIR="`ls -d packages/proto/*`"
for dir in $VDRDIR; do
  DIR="`ls -d packages/proto/*/meta | tr ' ' '\n'`" 
  . $dir/meta
  PLG_REV=$PKG_REV
  echo $PLG_REV $VDR_REV $PKG_REV
  sed -i "s|PKG_SECTION=\"proto\"|PKG_SECTION=proto|" $DIR
done
