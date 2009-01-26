#!/bin/sh


. /usr/data_resource/khad/common.sh
addlog "starting konzr"


#copy to executable partition
mkdir $EZPATH/tmp
cp -r "$MYPATH/konzr" $EZPATH/tmp

sleep 2
cd $EZPATH/tmp/konzr
exec ./konzr -r >> konzr.log 2>&1


