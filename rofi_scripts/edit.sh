#!/usr/bin/env sh

declare -A options
# configs
options[alacritty]="$HOME/.config/alacritty/alacritty.yml"
options[awesome]="$HOME/.config/awesome/rc.lua"
options[neofetch]="$HOME/.config/neofetch/config.conf"
options[qtile]="$HOME/.config/qtile/config.py"
options[ranger]="$HOME/.config/ranger/rc.conf"
options[vscodevim]="$HOME/.config/vscodevim.vim"
options[bashrc]="$HOME/.bashrc"
options[zshrc]="$HOME/.zshrc"


choice=$(printf '%s\n' "${!options[@]}" | rofi -dmenu -i -l 20 -p 'Edits:' "$@")

if [ "$choice" ]; then
    path=$(printf '%s\n' "${options["${choice}"]}")
    gtk-launch nvim "$path"
else
    echo "Exited" && exit 0
fi

