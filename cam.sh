#!/usr/bin/env bash

if [ -n "$1" ]; then file="$1"; else file="screencast"; fi

echo "Saving screencast in '$file'."
ffmpeg -f alsa -i default \
       -f x11grab -s `xdpyinfo | grep 'dimensions:'|awk '{print $2}'` -r 25 \
       -i :0.0 -f video4linux2 \
       -i /dev/video1 -filter_complex '[2:v]scale=380:-1[cam];[1:v][cam]overlay=W-w-8:H-h-8' \
       -c:a flac \
       -qscale 0 $file.mkv
