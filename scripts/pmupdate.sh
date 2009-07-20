#!/bin/sh

sudo pacman -Sy > /dev/null

output=`pacman -Qu`
numofup=`echo "$output" | grep Targets | sed 's/Targets (\([0-9]*\).*/\1/'`

if [ -n "$numofup" ]; then
    #sizeofup=`echo "$output" | grep "Total Installed Size" | cut -d ':' -f 2 | sed 's/^ *//'`
    #echo "$numofup ($sizeofup)"
    echo "$numofup"
else
    echo "0"

fi
