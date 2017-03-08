#!/bin/sh

wget ftp://ftp.netperf.org/netperf/netperf-2.7.0.tar.gz

tar -zxvf netperf-2.7.0.tar.gz
cd netperf-2.7.0/

./autogen.sh
./configure

make
sudo make install
