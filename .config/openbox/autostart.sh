#!/bin/bash
nitrogen --restore

# D-bus
if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
       eval `dbus-launch --sh-syntax --exit-with-session`
fi

#stalonetray &
tint2 &
#ossxmix -xb &

( sleep 2; conky -c .conkyrc; ) &
#conky -c .conkyrc &
#conky -c .conkyrc_cal &


