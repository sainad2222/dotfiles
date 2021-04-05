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
# add .local/bin to path by creating and .zshenv

echo "__________________________DOCKER_______________________"
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh
./get-docker.sh
rm -f get-docker.sh

echo "_______________________NODE________________________"
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
chmod +x nodesource_setup.sh
sudo ./nodesource_setup.sh
sudo apt install nodejs -y
sudo apt install npm -y

sudo apt install neofetch htop git curl

echo "____________________NPM-PACKAGES____________________________"
npm install -g tldr

echo "__________________________PYTHON-PACKAGES________________________"
echo "___________________________NEOVIM-DEPs__________________________"
pip3 install pynvim
pip3 install jedi
echo "_________________________DNSPYTHON_______________________________"
pip3 install dnspython
echo "_____________________________BEAUTIFUL-SOUP_______________________"
pip3 install bs4

# setup SSH keys
echo "__________________________________________________________________"
echo "CLONING into dotfiles"
git clone https://github.com/sainad2222/dotfiles.git

sudo add-apt-repository ppa:aslatter/ppa
sudo apt install alacritty
echo "_______________________ZSH__________________________________"
sudo apt install zsh
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

ln -s $HOME/dotfiles/.config/alacritty $HOME/.config/alacritty
ln -s $HOME/dotfiles/.config/awesome $HOME/.config/awesome
ln -s $HOME/dotfiles/.config/neofetch $HOME/.config/neofetch
ln -s $HOME/dotfiles/.config/nvim $HOME/.config/nvim
ln -s $HOME/dotfiles/.config/qtile $HOME/.config/qtile
ln -s $HOME/dotfiles/.config/qutebrowser $HOME/.config/qutebrowser
ln -s $HOME/dotfiles/.config/ranger $HOME/.config/ranger
ln -s $HOME/dotfiles/.config/vscodevim.vim $HOME/.config/vscodevim.vim

ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
