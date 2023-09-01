#!/bin/bash
sudo apt update
sudo apt install wget unzip figlet -y
git clone git@github.com:tejazelar/tejazelar.github.io.git
mkdir -p webfiles
cd webfiles
sudo wget https://www.tooplate.com/zip-templates/2118_chilling_cafe.zip
sudo unzip -o 2118_chilling_cafe.zip
sudo rm -rf ~/tejazelar.github.io/*
sudo cp -r 2118_chilling_cafe/* ~/tejazelar.github.io/
cd ..
sudo rm -rf webfiles
cd ~/tejazelar.github.io
git add .
git status
sleep 4
git commit -m "$(date)"
git push
figlet done
