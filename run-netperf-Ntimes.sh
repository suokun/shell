#!/bin/sh

i=1
var=""
IP="129.107.126.142"

while [ $i -le 10 ]
do
        var="log"

        #send packet
        netperf -H  $IP  -l 10 -t TCP_STREAM -p 11124 >> $var
        sleep 3

        i=$(( $i + 1 ))

done

grep " 87380" ./$var | awk ' { print ( $(NF) ) }' | awk '{sum+=$1}END{print sum/10 }'

rm $var
