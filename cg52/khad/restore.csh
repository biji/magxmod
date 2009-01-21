#!/bin/sh


. /usr/data_resource/khad/common.csh
addlog "restoring backup"


if [ ! -f /ezxlocal/download/mystuff/Backup/main.db ]
then 
    addlog "no backup found"
    exit
fi



if [ -f /ezxlocal/download/mystuff/Backup/restored.lock ]
then 
    addlog "already restored, please delete restored.lock"
    exit
fi




rm -f /ezxlocal/sysDatabase/*
rm -f /ezxlocal/download/appwrite/NetProfile/*

cp /ezxlocal/download/mystuff/Backup/* /ezxlocal/sysDatabase/
cp /ezxlocal/download/mystuff/Backup/setup/* /ezxlocal/download/appwrite/setup
cp /ezxlocal/download/mystuff/Backup/NetProfile/* /ezxlocal/download/appwrite/NetProfile

chmod -R 777 /ezxlocal/sysDatabase
chmod -R 777 /ezxlocal/download/appwrite/NetProfile
chmod -R 777 /ezxlocal/download/appwrite/setup
 

#lock down
> /ezxlocal/download/mystuff/Backup/restored.lock


/sbin/reboot
