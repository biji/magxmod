#!/bin/sh


. /usr/data_resource/khad/common.sh


busybox killall httpd bftpd inetd

busybox killall vr

busybox killall telnetd

busybox killall brwdaemon

/etc/initservices/services/bluetooth restart

