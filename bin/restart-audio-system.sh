#!/bin/bash

pulseaudio -k && sudo alsa force-reload

# The first part kills pulseaudio, the second reloads ALSA. 
# reference : http://askubuntu.com/questions/230888/is-there-another-way-to-restart-ubuntu-12-04s-sound-system-if-pulseaudio-alsa-d

