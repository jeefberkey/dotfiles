#!/bin/bash

dnf update -y
dnf install epel-release
dnf install -y git zsh vim 
dnf install -y i3
dnf install lxappreance lxinput

# rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby=1.9 --ruby=2.1
source ~/.rvm/scripts/rvm
rvm use --default 2.1.0
rvm all do gem install bundler pry 

# vagrant and virtualbox
dnf install binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms
cd /etc/repos.d/
wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
dnf install VirtualBox
/etc/init.d/vboxdrv setup
cd /tmp
wget http://download.virtualbox.org/virtualbox/5.0.2/Oracle_VM_VirtualBox_Extension_Pack-5.0.2-102096.vbox-extpack
vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack*.vbox-extpack
dnf install https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_x86_64.rpm
usermod -a -G vboxusers nick

# atom
wget https://atom.io/download/rpm -O atom.rpm
dnf install atom.rpm

# chrome
wget https://dl.google.com/linux/linux_signing_key.pub
rpm --import linux_signing_key.pub
cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF
dnf install google-chrome-beta

# git config
git config --global credential.helper /usr/libexec/git-core/git-credential-gnome-keyring
git config --global user.email=nick.miller@onyxpoint.com
git config --global user.name="Nick Miller"
git config --global core.editor=vim
git config --global push.default=simple
