#!/usr/bin/env bash

ffmpeg -f alsa -i default \
       -f x11grab -s 960x540 -r 25 \
       -i :0.0 -f video4linux2 \
       -i /dev/video0 -filter_complex '[2:v]scale=240:-1[cam];[1:v][cam]overlay=W-w-8:H-h-8,hflip' \
       -c:a flac \
       -qscale 0 \
       -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video1

# ffmpeg -f x11grab -r 15 -s 1920x1024 -i :0.0+0,0 -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video1
