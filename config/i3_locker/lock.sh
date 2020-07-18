#!/bin/sh

FONT="Montserrat Alternates"
WHITE_COLOR="ffffffff"

/usr/bin/i3lock \
	--ignore-empty-password				\
	--pass-media-keys					\
 	--screen=2							\
	--blur=5							\
	--keylayout 0						\
	--force-clock						\
	--image=$HOME/Pictures/test.jpg		\
	--show-failed-attempts				\
	\
	--timecolor=$WHITE_COLOR			\
	--timestr="%H:%M:%S"				\
	--timepos="50:h-100"				\
	--time-align 1						\
	--time-font=$FONT					\
    --timesize=96						\
	\
	--datecolor=$WHITE_COLOR			\
	--datestr="%A, %m %B %Y"			\
	--datepos="50:h-50"					\
	--date-align 1						\
	--date-font=$FONT					\
    --datesize=48						\
	\
	--layoutcolor=$WHITE_COLOR			\
	--layout-align 1					\
	--layout-font=$FONT					\
    --layoutsize=18						\
	\
	--radius 90							\
	--ring-width 1.5					\
	--insidevercolor=00000055			\
	--insidewrongcolor=00000055			\
	--insidecolor=00000055				\
	--ringvercolor=00ff4eff				\
	--ringwrongcolor=ff0000ff			\
	--line-uses-inside					\
	--verifcolor=$WHITE_COLOR			\
	--wrongcolor=$WHITE_COLOR			\
	--verif-font=$FONT					\
	--wrong-font=$FONT					\


# --show-failed-attempts	\
# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
