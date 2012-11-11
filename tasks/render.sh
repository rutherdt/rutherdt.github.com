#! /bin/bash

cd original
out="../img"
rm -rf $out
mkdir -p $out
folders=$( ls )
for folder in $folders;do
  CLEAN=${folder//[^a-zA-Z0-9-]/}
  newfolder=$out/$CLEAN
  mkdir -p $newfolder
  convert -verbose -thumbnail 600x -quality 85% $folder/* $newfolder/ruth-erdt-$CLEAN-%d-600.jpg
  convert -verbose -thumbnail 1600x -quality 85% $folder/* $newfolder/ruth-erdt-$CLEAN-%d-1600.jpg
  convert -thumbnail 200x -quality 85% $folder/* $newfolder/ruth-erdt-$CLEAN-%d-200.jpg
done
cd ..
du -sh original
du -sh img
open -a ImageOptim.app img/*
du -sh img
