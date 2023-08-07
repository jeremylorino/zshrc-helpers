#!/usr/bin/env bash

# result=$(confirm "are you sure?")
# $> are you sure? [y/N]: 
# if [[ $result -eq 0 ]]
# then
#   echo "no"
# fi
# # defaults to no
# # > 0 - no
# # > 1 - yes
function confirm() {
    while true; do
        # read -p "\e[33m$1\e[0m [y/\e[1mN\e[0m]: " yn
        read -p $'\e[33m'"$1"$'\e[0m [y/\e[1mN\e[0m]: ' yn
        case $yn in
            [Yy]* ) echo 1; break;;
            [Nn]* | *) echo 0; break;;
        esac
    done
}