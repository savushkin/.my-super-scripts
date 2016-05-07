#!/bin/bash
USER_HOME="/home/ivan"

:> init_error.log
exec 2>> init_error.log

alias apt-get="sudo apt-get -y"
alias add-apt-repository="sudo add-apt-repository -y"

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
sudo add-apt-repository ppa:libreoffice/ppa
sudo add-apt-repository ppa:ravefinity-project/ppa
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo add-apt-repository ppa:atareao/telegram

sudo apt-get update

sudo apt install git

cd ${USER_HOME}
git clone https://github.com/savushkin/.my-super-scripts.git

sudo apt install xubuntu-restricted-extras xfce4-artwork xfce4-xkb-plugin xfce4-battery-plugin xfce4-clipman xfce4-clipman-plugin xfce4-cpufreq-plugin xfce4-datetime-plugin xfce4-diskperf-plugin xfce4-fsguard-plugin xfce4-genmon-plugin xfce4-goodies xfce4-mount-plugin xfce4-sensors-plugin xfce4-smartbookmark-plugin xfce4-timer-plugin xfce4-wavelan-plugin

sudo apt install telegram curl oracle-java8-installer simplescreenrecorder synaptic exfat-fuse exfat-utils vlc audacity gimp gimp-data-extras kdenlive kde-l10n-ru geany clementine libavcodec-extra skype gtk2-engines-murrine:i386 gtk2-engines-pixbuf:i386 sni-qt:i386
sudo apt install p7zip-rar p7zip-full unace unrar zip unzip sharutils rar
sudo apt install screenfetch virtualbox unetbootin

sh /usr/share/doc/libdvdread4/install-css.sh

# node
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt install nodejs build-essential npm

# LaTeX
apt-get install texlive-full

mkdir ${USER_HOME}/edu
mkdir ${USER_HOME}/work
mkdir ${USER_HOME}/exp
mkdir ${USER_HOME}/ide

cd ${USER_HOME}/ide
wget https://download.jetbrains.com/idea/ideaIU-2016.1.1.tar.gz && tar -zxvf ideaIU-2016.1.1.tar.gz
rm -f ideaIU-2016.1.1.tar.gz
wget https://download.jetbrains.com/cpp/CLion-2016.1.1.tar.gz && tar -zxvf CLion-2016.1.1.tar.gz
rm -f CLion-2016.1.1.tar.gz

# maven
cd ${USER_HOME}/exp
wget http://apache-mirror.rbc.ru/pub/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar -zxvf apache-maven-3.3.9-bin.tar.gz
mv apache-maven-3.3.9 /usr/local/.
rm -f apache-maven-3.3.9-bin.tar.gz
${USER_HOME}/.my-super-scripts/setup.sh

cat /etc/default/avahi-daemon | sed 's/AVAHI_DAEMON_DETECT_LOCAL=1/AVAHI_DAEMON_DETECT_LOCAL=0/g' > /etc/default/avahi-daemon

apt-get clean && apt-get autoremove