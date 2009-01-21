#!/bin/sh

#init ezx env
. /etc/initservices/services/ezxenv.sh


export MYPATH=/usr/data_resource/khad
export EZPATH=/ezxlocal/download/mystuff
export PATH=$MYPATH:$PATH




#functions

addlog()
{
    busybox date "+%y/%m/%d %H:%M:%S" >> /ezxlocal/download/mystuff/log.htm
    busybox echo "<b>" >> /ezxlocal/download/mystuff/log.htm
    busybox echo "$@" >> /ezxlocal/download/mystuff/log.htm
    busybox echo "</b>" >> /ezxlocal/download/mystuff/log.htm
    busybox echo "<br>" >> /ezxlocal/download/mystuff/log.htm

}

