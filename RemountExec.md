# Introduction #

remount partition so we can execute binary from there but
mount locked by kernel security


# Details #

with cg36 modified.. we can remove startup script which links to /etc/initservices/services/mot\_security.sh

by removing that script, mount restriction should be avoided

**not tested..**