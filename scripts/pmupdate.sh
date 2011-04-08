#!/bin/bash

pkgs=$(pacman -Qu | wc -l)

if [ -n "$pkgs" ]; then
    echo "$pkgs"
else
    echo "0"

fi
