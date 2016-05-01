#!/bin/bash
exec 2>> init_error.log

alias apt-get="sudo apt-get -y"
alias add-apt-repository="sudo add-apt-repository -y"

apt-get update
apt-get upgrade
apt-get dist-upgrade

add-apt-repository ppa:webupd8team/java
add-apt-repository ppa:maarten-baert/simplescreenrecorder

apt-get update

apt-get install oracle-java8-installer
apt-get install simplescreenrecorder

apt-get install synaptic
apt-get install git
apt-get install exfat-fuse exfat-utils

# LaTeX
apt-get install texlive-full
apt-get install texmaker

mkdir ~/edu
mkdir ~/work
mkdir ~/exp
mkdir ~/ide

cd ~/ide
wget https://download.jetbrains.com/idea/ideaIU-2016.1.1.tar.gz && tar -zxvf ideaIU-2016.1.1.tar.gz
rm -f ideaIU-2016.1.1.tar.gz
wget https://download.jetbrains.com/cpp/CLion-2016.1.1.tar.gz && tar -zxvf CLion-2016.1.1.tar.gz
rm -f CLion-2016.1.1.tar.gz

~/.my-super-scripts/setup.sh

cat /etc/default/avahi-daemon | sudo sed 's/AVAHI_DAEMON_DETECT_LOCAL=1/AVAHI_DAEMON_DETECT_LOCAL=0/g' > /etc/default/avahi-daemon