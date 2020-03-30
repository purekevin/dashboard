#!/bin/sh

MOUNTPOINTS=""

for I in `df|grep 10.21.225.38|awk '{print $6}'`
do

	MOUNTPOINTS="$I $MOUNTPOINTS"
done


/usr/local/bin/pdu $MOUNTPOINTS | sed -ne 's/^\([0-9]\+\)\t\(.*\)$/node_directory_size_bytes{directory="\2"} \1/p' > /root/pdu.prom.$$ && mv /root/pdu.prom.$$ /var/lib/prometheus/logcollect/pdu.prom
