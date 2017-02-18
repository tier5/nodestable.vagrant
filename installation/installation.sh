#!/bin/bash
#Author: Santanu
#Descripttion: This application will setup a new sailsjs project on your vagran$

if [ ! -f /usr/bin/g++ ]; then
  echo -e "\e[0;36m[Installing build-essential]\e[0m"
  apt-get -yqq install build-essential
fi
sudo apt-get -y install nodejs-legacy;
sudo apt-get install npm -y;
sudo npm -g install npm;
sudo ln -s /usr/bin/nodejs /usr/bin/node;
sudo npm -g install n;
sudo n stable;
sudo apt-get -yqq install curl
if [ ! -f /usr/bin/grunt ]; then
  echo -e "\e[0;36m[Installing grunt]\e[0m"
  npm -g --silent install grunt-cli
fi

if [ ! -f /usr/bin/sails ]; then
  echo -e "\e[0;36m[Installing sails]\e[0m"
  npm -g --silent install sails
fi

if [ ! -f /usr/bin/bower ]; then
  echo -e "\e[0;36m[Installing bower]\e[0m"
  npm -g --silent install bower
fi

