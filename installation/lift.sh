#!/bin/bash

#Author: Santanu
#Descripttion: This script will install sails js and lift your app

cd /var/www/html
sails -v
sudo npm install
sails lift
