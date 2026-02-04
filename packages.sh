#!/bin/bash 
#This are some importance app we need to install on every linux system for it proper functioning and used as a server

set -e

echo "Author Fouenang Miguel Bruce"
echo "=========Installing Linux-Server Tools==========="

sudo apt install tree wget curl

echo "Installing Tree Editors for terminals"
sudo apt install vim nano 

#Let also install vim-runtime
sudo apt install vim-runtime -y 

#Let add zip 
sudo apt install zip 

#Let install package for pipeline management
sudo apt install pandoc

#Let install some task manager tools 
sudo apt install htop && sudo apt install btop && sudo apt install mc

#Let install some funny dev tools
sudo apt install cowsay 

#Let install iptables management
sudo apt install iptables