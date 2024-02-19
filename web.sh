#!/bin/bash
#Website setup
#Adding variables :-)
URL=https://templatemo.com/tm-zip-files-2020/templatemo_520_highway.zip
SRV=apache2
PKG=apt
FILE=templatemo_520_highway
echo "  Installing the Services & Extractors"
echo
sudo $PKG install $SRV wget unzip -y &>> /dev/null
echo "Start & Enabling the Services"
echo
sudo systemctl start $SRV
sudo systemctl enable $SRV
echo "Downloading the zip file from tooplate.com"
echo
mkdir -p webfiles
cd webfiles
echo
sudo wget $URL &>> /dev/null
echo "extracting the files "
echo
sudo unzip -o $FILE.zip &>> /dev/null
echo "copying the extracted file into html"
echo
echo "Cleaning files in html Directory"
sudo rm -rf /var/www/html/*
echo
sudo cp -r $FILE/* /var/www/html &>> /dev/null
echo "Restarting the Services"
sudo systemctl restart $SRV
cd ..
sudo rm -rf webfiles
sudo systemctl status $SRV | grep Active
date
