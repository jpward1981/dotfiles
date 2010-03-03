#!/bin/bash
nitrogen --restore

# D-bus
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
       eval `dbus-launch --sh-syntax --exit-with-session`
fi

#stalonetray &
trayer --edge top --align right --width 100 --widthtype pixel --transparent true --alpha 255 --expand true --height 12 &
sleep 1;
ossxmix -xb &

conky -c .conkyrc &
conky -c .conkyrc_cal &


