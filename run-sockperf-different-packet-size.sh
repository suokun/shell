#!/bin/sh

i=1
var=""
IP="129.107.126.142"
msg=16


while [ $msg -le 1024 ]
do
        while [ $i -le 10 ]
        do
                var="log"

                #send packet
                #sockperf throughput --tcp -i $IP -p 12321 -m $msg -t 10  >> $var
                sockperf throughput -i $IP -p 12321 -m $msg -t 10  >> $var

                sleep 3

                i=$(( $i + 1 ))
        done

        echo "msg:"$msg
        grep "sockperf: Summary: BandWidth" ./$var | awk ' { print ( $(NF-3) ) }' | awk '{sum+=$1}END{print sum/10 }'
        rm $var
        i=1

msg=$(( $msg * 2 ))
done


