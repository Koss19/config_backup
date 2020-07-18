#!/bin/sh

B='#00000000'  # blank
C='#000000aa'  # clear ish
D='#ff00ffcc'  # default
T='#ee00eeee'  # text
W='#880000bb'  # wrong
V='#bb00bbbb'  # verifying

/usr/bin/i3lock \
	--ignore-empty-password	\
	--pass-media-keys		\
 	--screen=1				\
	--blur=5				\
	--keylayout 0			\
	--force-clock			\
	\
	--indpos="400:h-170"	\
	\
	--time-align 1			\
	--date-align 1			\
	--layout-align 1		\
	--timestr="%H:%M:%S"	\
	--timecolor=$T			\
	--timepos="100:h-150"		\
	--time-font="Montserrat Alternates"	\
	--timesize=64			\
	\
	--datestr='%A, %d %B'	\
	--datecolor=$T			\
	--datepos="100:h-90"		\
	--date-font="Montserrat Alternates"	\
	--datesize=48			\
	\
	--radius=30				\
	--insidevercolor=$C		\
	--ringvercolor=$V     \
	\
	--insidewrongcolor=$C \
	--ringwrongcolor=$W   \
	\
	--insidecolor=$B      \
	--ringcolor=$D        \
	--linecolor=$B        \
	--separatorcolor=$D   \
	\
	--verifcolor=$T        \
	--wrongcolor=$T        \
	--datecolor=$T        \
	--layoutcolor=$T      \
	--keyhlcolor=$W       \
	--bshlcolor=$W        \
	\

# --indicator				\
# --show-failed-attempts	\
# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
