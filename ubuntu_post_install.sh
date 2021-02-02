#!/bin/bash

# updating and stuff
sudo apt update&&sudo apt upgrade

# Installing basic stuff

# flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# copyq
sudo add-apt-repository ppa:hluk/copyq
sudo apt-get update
sudo apt-get install copyq -y

# cpp
sudo apt install clangd -y
sudo apt install clang-tools -y
sudo apt install clang-format -y

sudo apt install git -y
sudo apt install gcc -y
sudo apt install curl -y
sudo apt-get install ubuntu-restricted-extras -y
sudo apt install alacritty -y
sudo apt install neovim -y
sudo apt-get install ripgrep -y
sudo apt install fd-find -y
sudo apt install net-tools
sudo apt install neofetch -y
sudo apt-get install fonts-powerline -y
sudo apt install mlocate -y
sudo apt install gnome-tweaks -y
sudo apt install chrome-gnome-shell -y
sudo apt install cmake -y
sudo apt install ranger -y

git clone https://github.com/sainad2222/dotfiles.git

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
