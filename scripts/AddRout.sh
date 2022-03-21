#!/bin/sh
. /etc/rc.common
CheckForNetwork
while [ "${NETWORKUP}" != "-YES-" ]
do
sleep 5
NETWORKUP=
CheckForNetwork
done
# Set static routing tables
/sbin/route add -net 172.29.83.1 -netmask 255.255.255.0 -gateway 172.29.16.1