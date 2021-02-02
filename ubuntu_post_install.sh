#!/bin/bash

# updating and stuff
sudo apt update&&sudo apt upgrade -y

# Installing basic stuff

# flatpak
echo "INSTALLING FLATPAK"
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# copyq
echo "INSTALLING COPYQ"
sudo add-apt-repository ppa:hluk/copyq
sudo apt-get update
sudo apt-get install copyq -y

# cpp
echo "INSTALLING CPP TOOLS"
sudo apt install gcc -y
sudo apt install clangd -y
sudo apt install clang-tools -y
sudo apt install clang-format -y

echo "INSTALLING JAVA"
sudo apt install default-jdk -y
echo "INSTALLING GIT"
sudo apt install git -y
echo "INSTALLING CURL"
sudo apt install curl -y
echo "INSTALLING UBUNTU RESTRICTED EXTRAS"
sudo apt-get install ubuntu-restricted-extras -y
echo "INSTALLING ALACRITTY"
sudo apt install alacritty -y
echo "INSTALLING VIM & NEOVIM"
sudo apt install vim -y
sudo apt install neovim -y
echo "INSTALLING rg,fd,fzf"
sudo apt-get install ripgrep -y
sudo apt install fd-find -y
sudo apt-get install fzf -y
echo "INSTALLING NET-TOOLS"
sudo apt install net-tools
echo "INSTALLING NEOFETCH"
sudo apt install neofetch -y
echo "INSTALLING POWERLINE-FONTS"
sudo apt-get install fonts-powerline -y
echo "INSTALLING mlocate alt for locate"
sudo apt install mlocate -y
echo "INSTALLING GNOME-TWEAKS"
sudo apt install gnome-tweaks -y
echo "INSTALLING GNOME-SHELL"
sudo apt install chrome-gnome-shell -y
echo "INSTALLING CMAKE"
sudo apt install cmake -y
echo "INSTALLING RANGER"
sudo apt install ranger -y

echo "CLONING into dotfiles"
git clone https://github.com/sainad2222/dotfiles.git

echo "INSTALLING zsh"
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
