#!/bin/bash

killall conky
sleep 5

conky -q -c ~/.conky/common.conf &
conky -q -c ~/.conky/clock.conf &
conky -q -c ~/.conky/temperature.conf &
