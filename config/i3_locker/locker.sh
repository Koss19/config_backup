#!/bin/sh

RESOLUTION=$(xrandr | grep '*' | cut -d' ' -f4)
convert -resize $RESOLUTION ~/Pictures/lock2.jpg ~/Pictures/test.jpg

/usr/bin/xautolock \
	-time 30 \
	-locker '$HOME/.config/i3_locker/lock.sh' \
	-killtime 10 \
	-killer 'systemctl suspend' \
	-notify 30 \
	-notifier '/usr/bin/notify-send --urgency low --expire-time=30000 -i typing-monitor "Screen saver" "Screen will lock after 30 seconds"' \
	-corners 0-0- \
	-detectsleep

