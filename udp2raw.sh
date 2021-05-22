#!/bin/sh
touch /udp2raw-tunnel/udp2raw.conf
NewPassword=`< /dev/urandom tr -dc 0-9-A-Z-a-z-/|head -c ${1:-10}`
echo '-c \n -k $NewPassword \n -l 0.0.0.0:4000 \n -r 43.129.240.245:0 \n --raw-mode icmp' > /udp2raw-tunnel/udp2raw.conf
echo "password: $NewPassword"
