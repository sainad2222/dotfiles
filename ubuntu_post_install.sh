#!/bin/bash

# updating and stuff
sudo apt update&&sudo apt upgrade -y

# Installing basic stuff

# flatpak
echo "_______________________FLATPAK______________________________"
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# copyq
echo "_______________________COPYQ________________________________"
sudo add-apt-repository ppa:hluk/copyq
sudo apt-get update
sudo apt-get install copyq -y

# cpp
echo "______________________CPP-TOOLS________________________________"
sudo apt install gcc -y
sudo apt install clangd -y
sudo apt install clang-tools -y
sudo apt install clang-format -y
sudo apt install cmake -y


echo "_______________________JAVA___________________________________"
sudo apt install default-jdk -y
echo "_______________________GIT_______________________________________"
sudo apt install git -y
echo "_______________________CURL______________________________________"
sudo apt install curl -y
echo "_____________________UBUNTU RESTRICTED EXTRAS_____________________________"
sudo apt-get install ubuntu-restricted-extras -y
echo "_____________________ALACRITTY___________________________________"
sudo apt install alacritty -y
echo "________________________VIM & NEOVIM_____________________________"
sudo apt install vim -y
sudo apt install neovim -y
echo "_______________________rg,fd,fzf_______________________________"
sudo apt-get install ripgrep -y
sudo apt install fd-find -y
sudo apt-get install fzf -y
echo "_______________________NET-TOOLS_______________________________"
sudo apt install net-tools
echo "______________________NEOFETCH________________________________"
sudo apt install neofetch -y
echo "______________________POWERLINE-FONTS_____________________________"
sudo apt-get install fonts-powerline -y
echo "_____________________MLOCATE_______________________________"
sudo apt install mlocate -y
echo "_______________________GNOME-TWEAKS______________________________"
sudo apt install gnome-tweaks -y
echo "_______________________GNOME-SHELL______________________________"
sudo apt install chrome-gnome-shell -y
echo "_______________________RANGER_______________________________"
pip install ranger-fm
echo "________________________BAT__________________________"
sudo apt install bat -y
mkdir -p ~/.local/bin
sudo ln -s /usr/bin/batcat ~/.local/bin/bat

echo "__________________________DOCKER_______________________"
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh
./get-docker.sh
rm -f get-docker.sh

echo "__________________________PYTHON-PACKAGES________________________"
echo "___________________________NEOVIM-DEPs__________________________"
pip3 install pynvim
pip3 install jedi
echo "_________________________DNSPYTHON_______________________________"
pip3 install dnspython
echo "_____________________________BEAUTIFUL-SOUP_______________________"
pip3 install bs4

echo "__________________________________________________________________"
echo "CLONING into dotfiles"
git clone https://github.com/sainad2222/dotfiles.git


echo "_______________________ZSH__________________________________"
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# FINAL words
echo "_____________________FINAL-WORDS________________________"
echo "Things to do"
echo "GNOME extensions"
echo "  net speed monitor"
echo "  system-monitor"
echo "  material shell"
echo "setup SSH"
