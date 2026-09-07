#!/bin/sh

#  _   _ _      _    _           _       _            
# | \ | (_)    | |  | |         | |     | |           
# |  \| |___  _| |  | |_ __   __| | __ _| |_ ___ _ __ 
# | . ` | \ \/ / |  | | '_ \ / _` |/ _` | __/ _ \ '__|
# | |\  | |>  <| |__| | |_) | (_| | (_| | ||  __/ |   
# |_| \_|_/_/\_\\____/| .__/ \__,_|\__,_|\__\___|_|   
#                     | |                             
#                     |_|                             

COL1="\e[34m"
R="\e[0m"
LN="tr -d '\n'"

fastfetch

cd ~/nix-config

nix flake update
sudo nixos-rebuild build --flake .#$(hostname)
nvd diff /run/current-system ./result

echo -e "${COL1}:: ${R}" | ${LN} && read -n 1 -p "Update system? [Y/n] " reply; 

if [ "$reply" = "${reply#[Nn]}" ]; then
    if [ "$reply" = "" ]; then
        git add .; sudo nixos-rebuild switch --flake .#$(hostname); echo && echo -e "${COL1}:: ${R}" | ${LN} && read -n 1 -p "Updates complete. Press any key to exit..."
    else
        echo && git add .; sudo nixos-rebuild switch --flake .#$(hostname); echo && echo -e "${COL1}:: ${R}" | ${LN} && read -n 1 -p "Updates complete. Press any key to exit..."; exit
    fi
else
    echo && echo -e "${COL1}:: ${R}" | ${LN} && read -n 1 -p "Discard the build? [Y/n] " reply;
    
    if [ "$reply" = "${reply#[Nn]}" ]; then
        git checkout flake.lock; rm ./result; echo -e "${COL1}:: ${R}" | ${LN} && read -n 1 -p "Updates canceled, build discarded. Press any key to exit..."; exit
    else
        git checkout flake.lock; echo -e "${COL1}:: ${R}" | ${LN} && read -n 1 -p "Updates canceled. Press any key to exit..."; exit
    fi
fi