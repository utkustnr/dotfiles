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
sudo apt install bc bison build-essential curl flex g++-multilib gcc-multilib git git-lfs gnupg gperf imagemagick jq lib32ncurses5-dev lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-gtk3-dev libxml2 libxml2-utils lunzip lzop openjdk-11-jdk-headless openjdk-8-jdk perl pngcrush python-is-python3 python3 rr rsync schedtool simg2img squashfs-tools virtualenv xattr xmlstarlet xsltproc xz-utils zip zlib1g-dev  -y
mkdir -p ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
source ~/.profile
rm platform-tools-latest-linux.zip
read -p 'Git name ' uservar
git config --global user.name $uservar
read -p 'Git mail ' mailvar
git config --global user.email $mailvar