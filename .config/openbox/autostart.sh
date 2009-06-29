#!/bin/bash
nitrogen --restore

# D-bus
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
       eval `dbus-launch --sh-syntax --exit-with-session`
fi
thunar --daemon &

#Alerts when messaged in IRC
/home/pyther/bin/notify_irssi.sh &

#stalonetray & #See config file ~/.stalonetray
conky &
conky -c .conky_top &

trayer --edge top --align right --transparent true --height 16 --alpha 255 --widthtype pixles --width 120 &
#(sleep 5; (stalonetray &)) &
