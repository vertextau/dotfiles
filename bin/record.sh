#!/bin/sh
NAME=$(date +"%Y-%m-%dT%H:%M")

sudo ffmpeg -f v4l2 -video_size 640x480 -i /dev/video$1 -c:v libx264 -vf "drawtext=fontfile=/usr/share/fonts/truetype/ttf-dejavu/DejaVuSans-Bold.ttf: text='%{localtime\:%Y/%m/%d %H\\\\\:%M\\\\\:%S}': fontcolor=black@0.9: x=480: y=460" -preset ultrafast output.mp4

mv output.mp4 $NAME.mp4
