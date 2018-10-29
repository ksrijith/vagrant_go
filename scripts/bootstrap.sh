#!/bin/bash
set -eu
apt-get -y update

# Setup
/scripts/setup_zsh.sh
/scripts/install_go.sh
/scripts/install_nodejs.sh
/scripts/setup_vim.sh
/scripts/install_tools.sh
/scripts/install_buffalo.sh

#Cleanup
echo "fs.inotify.max_user_watches = 524288" > /etc/sysctl.d/60-inotify.conf
sysctl -p --system
chown -R vagrant:vagrant /home/vagrant/
apt-get -y autoclean
apt-get -y clean
apt-get -y autoremove