# command output plasmoid widget
# https://store.kde.org/p/1166510/
# 2 instances of this widget one for MEM: and one for %
printf "%.1f" $(free | grep Mem | awk '{print $3/$2 * 100.0}' | bc -l) && echo %
# for task-switcher visualization theme
sudo apt-get install kwin-addons 
