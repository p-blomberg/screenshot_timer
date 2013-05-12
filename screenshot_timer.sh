#!/bin/bash

# Change this to wherever you want the screenshots
cd /Users/sanfred/timetracker

touch last_run
DATE=`date +%Y-%m-%d`
TIME=`date +%Y-%m-%d--%H-%M-%S`

# Remove this if you don't want a new directory every day
mkdir -p $DATE
cd $DATE

# Take the screenshot
screencapture -x ${TIME}_1.png ${TIME}_2.png

# Merge the screens using imagemagick
/usr/local/bin/montage -geometry +0+0 ${TIME}_2.png ${TIME}_1.png ${TIME}.png && rm ${TIME}_1.png ${TIME}_2.png
# Notice the order of the screen on the montage line, 
# because I want the second screen to the left of the first.
# If you don't have imagemagick, "brew install imagemagick"
# or find yourself with separate images for every screen.
