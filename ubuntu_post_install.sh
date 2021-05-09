#!/bin/bash
# update following links timely
# ubuntu-nerd-fonts go node

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

sudo apt install neofetch htop git curl vim-gtk vim net-tools mlocate gnome-tweaks python3-pip rofi dmenu

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

echo "_____________________NODE packages______________"
sudo npm install -g tldr
sudo npm install -g neovim

echo "_____________________PIP Packages___________________"
pip install pynvim jedi dnspython bs4 ranger-fm black

echo "___________________Installing ubuntu nerd fonts____________"
mkdir -p tmp
cd tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Ubuntu.zip
unzip Ubuntu.zip
mv Ubuntu ~/.fonts
fc-cache -fv
cd $HOME
rm -rf tmp

echo "_______________________JAVA___________________________________"
sudo apt install default-jdk -y

echo "_______________________GNOME-SHELL______________________________"
sudo apt install gnome-shell-extensions chrome-gnome-shell -y

echo "________________________7zip______________________"
sudo add-apt-repository universe
sudo apt install p7zip-full p7zip-rar -y

echo "____________________GO____________________________"
mkdir -p tmp
cd tmp
wget https://golang.org/dl/go1.16.3.linux-amd64.tar.gz
extract go1.16.3.linux-amd64.tar.gz
cd go1.16.3.linux-amd64.tar.gz
sudo mv go /usr/local
cd $HOME
rm -rf tmp
# add go to path

# install cf-tool from https://github.com/xalanq/cf-tool#installation

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

### softwares
# discord(snap)
# telegram(snap)
# visual studio code(snap)
# bitwarden
# virtualbox
# notion(curl https://raw.githubusercontent.com/puneetsl/lotion/master/setup.sh > setup.sh and ./setup.sh native)
# qutebrowser(install using virtualenv)
cd $HOME/edu
# sudo apt install --no-install-recommends git ca-certificates python3 python3-venv asciidoc libglib2.0-0 libgl1 libfontconfig1 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 libxcb-shape0 libxcb-xfixes0 libxcb-xinerama0 libxcb-xkb1 libxkbcommon-x11-0 libdbus-1-3 libyaml-dev gcc python3-dev libnss3
git clone https://github.com/qutebrowser/qutebrowser.git
cd qutebrowser
sudo apt install python3-venv asciidoc
python3 scripts/mkvenv.py
python3 scripts/asciidoc2html.py
# /home/sainath/.venv/bin/python3 -m qutebrowser
cd $HOME

## optional
# obs
# brave
# octave(sudo apt-get install octave-control octave-image octave-io octave-optim octave-signal octave-statistics octave)
# teams(snap or deb package from website)

## Change keyboard shortcuts
sudo apt upgrade
