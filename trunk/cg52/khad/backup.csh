#!/bin/sh


. /usr/data_resource/khad/common.csh
addlog "creating backup"



rm -rf /ezxlocal/download/mystuff/Backup/*

mkdir -p /ezxlocal/download/mystuff/Backup/setup
mkdir -p /ezxlocal/download/mystuff/Backup/NetProfile


cp /ezxlocal/sysDatabase/* /ezxlocal/download/mystuff/Backup/
cp /ezxlocal/download/appwrite/setup/* /ezxlocal/download/mystuff/Backup/setup
cp /ezxlocal/download/appwrite/NetProfile/* /ezxlocal/download/mystuff/Backup/NetProfile

