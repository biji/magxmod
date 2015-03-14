# Introduction #

I want to connect internet without gprs, my laptop already has connected to internet.



# Details #

I use USBLan connection to laptop.


Laptop IP: 192.168.16.1 Phone IP: 192.168.16.2

What i have tried:
  * set masquerading in laptop
`iptables -t nat -F`
`iptables -t nat -I POSTROUTING -o eth0 -j MASQUERADE`

  * set default route in phone (use telnet to remote)
`route add default gw 192.168.16.1`

  * ping ip from phone to outside.. successful
`ping 202.43.162.29`

  * ping host name from phone (ok.. it worked now using dnsmasq)
`dnsmasq -S YOUR_DNS_SERVER`
`ping google.com`

  * java apps and opera seems not using default route
will need to find why
