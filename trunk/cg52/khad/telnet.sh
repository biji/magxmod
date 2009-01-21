#!/bin/sh


. /usr/data_resource/khad/common.sh
addlog "starting telnet"


/usr/local/bin/vendor_usb 13
sleep 5
ifconfig usbl0 192.168.16.2 netmask 255.255.255.0 



#copy to executable partition
mkdir $EZPATH/tmp
cp -r "$MYPATH/www" $EZPATH/tmp
cp $MYPATH/bftpd $EZPATH/tmp


#httpd
killall httpd
httpd -p 80 -h "$EZPATH/tmp/www" 


#bftpd
killall bftpd
$EZPATH/tmp/bftpd -d -c "$MYPATH/bftpd.conf" 


# telnet service
killall inetd
mount -t devpts devpts /dev/pts
inetd /etc/inetd.engr 



# sync date
sleep 60
busybox rdate 192.168.16.1

