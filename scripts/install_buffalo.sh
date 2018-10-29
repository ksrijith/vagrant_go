#!/bin/sh
wget  https://github.com/gobuffalo/buffalo/releases/download/v0.12.3/buffalo_0.12.3_linux_amd64.tar.gz -O /tmp/bufallo.tar.gz
cd /tmp
tar xvzf bufallo.tar.gz
mv /tmp/buffalo-no-sqlite /usr/local/bin/buffalo
su - vagrant -c  "git clone https://github.com/1995parham/buffalo.zsh ~/.oh-my-zsh/custom/plugins/buffalo"