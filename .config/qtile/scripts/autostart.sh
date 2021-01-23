#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Some ways to set your wallpaper besides variety or nitrogen
feh --bg-fill ~/Pictures/Wallpapers/Firefox_wallpaper.png &

(conky -c $HOME/.config/qtile/scripts/system-overview) &
run nm-applet &
picom --config $HOME/.config/qtile/scripts/picom.conf &
run volumeicon &
run lotion &
