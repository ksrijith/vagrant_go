#!/bin/sh
apt install -y zsh
chsh -s /bin/zsh vagrant
su - vagrant -c  "wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh"
cp /scripts/custom.zsh /home/vagrant/.oh-my-zsh/custom
apt-get install fonts-powerline
rm -rf /home/vagrant/.oh-my-zsh/.git