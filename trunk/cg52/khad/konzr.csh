#!/bin/sh


. /usr/data_resource/khad/common.csh
addlog "starting konzr"


#copy to executable partition
mkdir $EZPATH/tmp
cp -r "$MYPATH/konzr" $EZPATH/tmp

sleep 2
cd $EZPATH/tmp/konzr
exec ./konzr >> konzr.log 2>&1

