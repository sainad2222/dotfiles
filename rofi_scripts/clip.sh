#!/usr/bin/env sh

declare -A options
# Personal
options[name]="Sainath Singineedi"
options[gmail]="sainathsingineedi2222@gmail.com"
options[github]="https://github.com/sainad2222"
options[resume]="https://cutt.ly/sainath_resume"
options[resume_drive]="https://drive.google.com/file/d/1tZ9vTkaK74PYTYAMEEvw_pjoWxG9ru6i/view"
# Profiles
options[linkedin]="https://www.linkedin.com/in/sainathsingineedi"
options[website]="https://sainathsingineedi.me"
options[codechef]="https://www.codechef.com/users/sainad"
options[codeforces]="https://codeforces.com/profile/sainad"
options[stopstalk]="https://www.stopstalk.com/user/profile/sainad"
options[spoj]="https://www.spoj.com/users/sainad"
options[atcoder]="https://atcoder.jp/users/sainad"
options[hackerearth]="https://www.hackerearth.com/@sainad"
options[hackerrank]="https://www.hackerrank.com/sainad"
# Projects
options[xmeme]="https://my-xmeme.netlify.app"
options[xmeme_source]="https://github.com/sainad2222/XMeme"
options[stalkerbot]="https://t.me/saiscraperBOT"
options[stalkerbot_source]="https://github.com/sainad2222/stalkerBOT"
options[cpbuddy]="https://addons.mozilla.org/en-US/firefox/addon/cp-buddy"
options[cpbuddy_source]="https://github.com/sainad2222/cp-buddy"
options[gitbot_source]="https://github.com/sainad2222/gitbot"
options[shortly]="https://shortlyyyy.netlify.app"
options[shortly_source]="https://github.com/sainad2222/shortLY"

choice=$(printf '%s\n' "${!options[@]}" | rofi -dmenu -i -l 20 -p 'Clips:' "$@")

if [ "$choice" ]; then
    option=$(printf '%s\n' "${options["${choice}"]}")
    printf '%s' "$option" | xclip -selection clipboard
    print '%s' "$option" | xclip
else
    echo "Exited" && exit 0
fi
