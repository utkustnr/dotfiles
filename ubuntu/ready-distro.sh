#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip
sudo apt install unzip -y
unzip platform-tools-latest-linux.zip -d ~
echo -e '\n' >> ~/.profile
echo -e 'if [ -d "$HOME/platform-tools" ] ; then' >> ~/.profile
echo -e '	PATH="$HOME/platform-tools:$PATH"' >> ~/.profile
echo -e 'fi' >> ~/.profile
echo -e '\n' >> ~/.profile
source ~/.profile
sudo apt install bc bison build-essential curl flex g++-multilib gcc-multilib git gnupg gperf libxml2 lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk3.0-gtk3-dev imagemagick git lunzip lzop schedtool squashfs-tools xsltproc xattr zip zlib1g-dev openjdk-8-jdk python perl xmlstarlet virtualenv xz-utils rr jq simg2img libncurses5 pngcrush lib32ncurses5-dev git-lfs libxml2 openjdk-11-jdk-headless -y
mkdir -p ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
source ~/.profile
rm platform-tools-latest-linux.zip