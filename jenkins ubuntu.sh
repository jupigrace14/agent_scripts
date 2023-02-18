!/bin/bash
Author: Jupiter
Description script to install Jenkins on ubuntu server
Date: Feb 18 2023


sudo apt-get update
sudo apt-get install default-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update

sudo apt-get install jenkins
sudo systemctl start jenkins

sudo systemctl status jenkins