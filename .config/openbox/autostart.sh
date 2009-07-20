#!/bin/bash
nitrogen --restore

# D-bus
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
       eval `dbus-launch --sh-syntax --exit-with-session`
fi
thunar --daemon &

#Alerts when messaged in IRC
#/home/pyther/bin/notify_irssi.sh &

trayer --edge top --align right --transparent true --height 12 --alpha 255 --widthtype pixles --width 120  --SetDockType true &

sleep 1

#stalonetray & #See config file ~/.stalonetray
conky -c .conkyrc &
conky -c .conkyrc_time &
conky -c .conkyrc_cal &

#(sleep 5; (stalonetray &)) &
