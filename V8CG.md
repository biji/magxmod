# Introduction #

V8 firmware chunked into parts.... called CG

# Details #


From kernel command line:
ipu\_mem=4896K@0x93700000 ipu\_mem=4896K@0x93700000 brdrev=P2A noinitrd console=/dev/null rw mem=60M@0x90000000 init=/linuxrc ip=off root=/dev/mtdblock/root mtdparts=nand0:1152k@1m(pds),128k(setup),256k(logo),128k(secure),1536k(kern)ro,3968k(bpsw),29m(root)ro,7680k(lang),7m(user),14848k(resrc),445696k(mass\_storage),128k(kpanic),10880k(rsv)


|Code Group 	| Signed? 	| Name (Mem Map) |	 Contents|
|:-----------|:---------|:---------------|:---------|
|30 |	Yes |	mbm.img |	Motorola Boot Manager (MBM)|
|31(a) |	Yes |	mbmloader.img |	Ramloader|
|31(b) |	Yes |	cdt.bin |	MEM\_MAP (see below)|
|32| 	Yes |		      |  Baseband Bootloader|
|34 |	Yes |	lbl 	     |   Linux Boot Loader|
|35 	|Yes |	zImage |	        Kernel|
|36| 	Yes |	rootfs.img |	Squashfs image mounted as / (root)|
|37 |	No |	userfs.img |	Jffs2 image mounted as /ezxlocal|
|38 |	No |pdsfs.img 	|Yaffs2 image mounted as /etc/pds|
|41 |	Yes |	atags.img |	Kernel boot parameters|
|42 |	No |	logo.bin |	Boot Logo|
|43 |	No |setup.img 	|Squashfs image mounted as /usr/setup|
|44 |	Yes |	securesetup.img 	|Squashfs image mounted as /usr/securesetup|
|45 |	Yes |	gsm\_scmall\_build.bin |	Baseband software|
|46 |	Yes |	language.img |	Squashfs image mounted as /usr/language|
|48 |	No |	mass\_storage.img |	Yaffs2 image mounted as /mnt/msc\_int0   |
|   |    |       |  Contains a vfat img loop mounted as /ezxlocal/download/mystuff|
|49 |	Yes |	usb\_firm.bin |	USB Firmware|
|52 |	No |	resource.img |	Squashfs image mounted as /usr/data\_resource|
|53 |	No |	kpanic |	kernel panic dump|
|54 |	No |	rsv 	| Reserved? 10 MB |
|55 |	No |	mbmbackup.img |	(Motorola Boot Manager backup?)|
|56 |	No |	bploader.img |	 |



there seems unallocated cg size 10 MB (rsv)


Ref: http://wiki.openezx.org/MotoMAGX_Security