setxkbmap -option terminate:ctrl_alt_bksp
setxkbmap -option caps:escape
setxkbmap -option compose:ralt

xrdb -merge ~/.Xresources

# Set Cursor Theme
#xsetroot -cursor_name Vanilla-DMZ

# D-bus
#/home/pyther/bin/dbus_launch.sh

exec ck-launch-session dbus-launch openbox-session
