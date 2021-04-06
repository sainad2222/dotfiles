#!/bin/bash

sudo apt update

echo "________________________BAT__________________________"
sudo apt install bat -y
mkdir -p ~/.local/bin
sudo ln -s /usr/bin/batcat ~/.local/bin/bat
# add .local/bin to path by creating and .zshenv

# setup SSH keys

echo "__________________________________________________________________"
echo "CLONING into dotfiles"
git clone https://github.com/sainad2222/dotfiles.git

sudo apt install neofetch htop git curl vim-gui-common vim net-tools mlocate gnome-tweaks python3-pip

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

# vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "______________________POWERLINE-FONTS_____________________________"
sudo apt-get install fonts-powerline -y

# flatpak
echo "_______________________FLATPAK______________________________"
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "_____________________UBUNTU RESTRICTED EXTRAS_____________________________"
sudo apt-get install ubuntu-restricted-extras -y

echo "_______________________rg,fd,fzf_______________________________"
sudo apt-get install fd-find fzf -y
# sudo apt install ripgrep

sudo apt install clang-format -y

echo "_______________________NODE________________________"
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
chmod +x nodesource_setup.sh
sudo ./nodesource_setup.sh
sudo apt install nodejs -y
sudo apt install npm -y

echo "_____________________NODE packages______________"
sudo npm install -g tldr
sudo npm install -g neovim

echo "_____________________PIP Packages___________________"
pip install pynvim jedi dnspython bs4 ranger-fm black

# download nerd font(ubuntu nerd font) from https://www.nerdfonts.com/font-downloads
# put it in ~/.fonts and run `fc-cache -fv`

echo "_______________________JAVA___________________________________"
sudo apt install default-jdk -y

echo "_______________________GNOME-SHELL______________________________"
sudo apt install gnome-shell-extensions chrome-gnome-shell -y

## gnome-extensions
# https://extensions.gnome.org/extension/104/netspeed/
# https://extensions.gnome.org/extension/779/clipboard-indicator/
# https://extensions.gnome.org/extension/120/system-monitor/
# deps for system monitor
sudo apt install gir1.2-gtop-2.0 gir1.2-nm-1.0 gir1.2-clutter-1.0 gnome-system-monitor
# https://extensions.gnome.org/extension/307/dash-to-dock/

# download icon pack from https://www.gnome-look.org/p/1425426/
# and put it in /usr/share/icons

# echo "___________________OPTIONAL_____________________"
# echo "__________________________DOCKER_______________________"
# curl -fsSL https://get.docker.com -o get-docker.sh
# chmod +x get-docker.sh
# ./get-docker.sh
# rm -f get-docker.sh

