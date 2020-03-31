#!/bin/sh

$I=1

while [ "$I" !=  "99" ]
do
        touch /mnt1/$I
        I=`expr $I + 1`
        echo $I
done
