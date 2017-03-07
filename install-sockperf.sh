#!/bin/sh


apt install git autoconf automake libtool -y
git clone https://github.com/Mellanox/sockperf.git
cd sockperf/
./autogen.sh
./configure
make 
make install 
