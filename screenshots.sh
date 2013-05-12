#!/bin/bash
cd /Users/sanfred/timetracker
touch last_run
DATE=`date +%Y-%m-%d`
TIME=`date +%Y-%m-%d--%H-%M-%S`
mkdir -p $DATE
cd $DATE
screencapture -x ${TIME}_1.png ${TIME}_2.png ${TIME}_3.png ${TIME}_4.png ${TIME}_5.png ${TIME}_6.png ${TIME}_7.png ${TIME}_8.png ${TIME}_9.png ${TIME}_10.png
