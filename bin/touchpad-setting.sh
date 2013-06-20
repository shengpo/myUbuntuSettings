#!/bin/bash

# Disable tap-to-click 
synclient TapButton1=0 
synclient TapButton2=0 
synclient TapButton3=0 

# turn one two finger scrolling vertically and horizontally
synclient VertTwoFingerScroll=1
synclient HorizTwoFingerScroll=1

# disable tapping and scrolling when typing
# -i 2	: sets the idle time to 2 seconds. The idle time specifies how many seconds to wait after the last key-press before enabling the touchpad again.
# -t	: tells the daemon not to disable mouse movement when typing and only disable tapping and scrolling.
# -k	: tells the daemon to ignore modifier keys when monitoring keyboard activity (e.g.: allows Ctrl+Left Click).
# -d	: starts as a daemon, in the background.
# man syndaemon for more info
#syndaemon -t -k -i 2 -d
syndaemon -k -i 0.3 -d
