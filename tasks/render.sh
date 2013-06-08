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
  convert -verbose -thumbnail 700x -quality 85% $folder/* $newfolder/ruth-erdt-$CLEAN-%d-700.jpg
  convert -verbose -thumbnail 1400x -quality 85% $folder/* $newfolder/ruth-erdt-$CLEAN-%d-700@2x.jpg
  convert -verbose -thumbnail 1800x -quality 85% $folder/* $newfolder/ruth-erdt-$CLEAN-%d-1800.jpg
  convert -thumbnail 200x -quality 85% $folder/* $newfolder/ruth-erdt-$CLEAN-%d-200.jpg
done
cd ..
du -sh original
du -sh img
open -a ImageOptim.app img/*




du -sh img
