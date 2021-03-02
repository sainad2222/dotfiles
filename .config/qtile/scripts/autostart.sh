#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Some ways to set your wallpaper besides variety or nitrogen
feh --bg-fill ~/Pictures/Wallpapers/darkmountain.jpg &

run nm-applet &
picom &
run volumeicon &
run copyq &
xscreensaver -nosplash &
