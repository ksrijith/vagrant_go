#!/bin/sh
DOWNLOAD_URL="https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz"

apt-get install -y apt-transport-https
apt-get install -y ack-grep
cd tmp
wget $DOWNLOAD_URL -O /tmp/go.tar.gz
tar xf /tmp/go.tar.gz -C /usr/local/lib
su - vagrant -c  "mkdir -p $GOPATH"