#!/bin/sh




. /usr/data_resource/khad/common.sh
addlog "system started"



sleep 7
#remount for exec
mount -t vfat -o remount,rw,sync,nodiratime,nosuid,nodev,uid=2000,gid=233,fmask=0022,dmask=0022,shortname=mixed,utf8 /dev/loop/0 /ezxlocal/download/mystuff

mount -t devpts devpts /dev/pts








#setup dirs
mkdir -p /var/spool/cron/crontabs
mkdir $EZPATH/tmp



#crontab
busybox crond
echo -ne "10 12 * * * sh $MYPATH/sanity.sh\n" | busybox crontab -




#configs
busybox sed -i 's/JavaHeapSize = .*/JavaHeapSize = 5/'  /ezx_user/download/appwrite/setup/ezx_system.cfg
busybox sed -i 's/JSR135_Volume = .*/JSR135_Volume = 1/'  /ezx_user/download/appwrite/setup/ezx_system.cfg




#run custom script
$EZPATH/autorun.sh


