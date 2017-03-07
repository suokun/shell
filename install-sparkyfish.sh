#!/bin/sh

wget https://github.com/chrissnell/sparkyfish/releases/download/v1.2/sparkyfish-cli-v1.2-linux-amd64.gz
wget https://github.com/chrissnell/sparkyfish/releases/download/v1.2/sparkyfish-server-v1.2-linux-amd64.gz

gunzip sparkyfish-cli-v1.2-linux-amd64.gz
gunzip sparkyfish-server-v1.2-linux-amd64.gz

chmod 755 sparkyfish-cli-v1.2-linux-amd64
chmod 755 sparkyfish-server-v1.2-linux-amd64

mv sparkyfish-cli-v1.2-linux-amd64 /usr/local/bin/sparkyfish-cli
mv sparkyfish-server-v1.2-linux-amd64 /usr/local/bin/sparkyfish-server
