# Introduction #

Automatic sync time and date to your phone.
After flashing... phone's time is changed.

# Details #

Busybox contain rdate support so we can do:
`busybox rdate 192.168.16.1`

We can setup inetd or xinet.d on our laptop to accept rdate request.