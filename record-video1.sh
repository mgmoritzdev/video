#!/usr/bin/env bash

if [ -n "$1" ]; then file="$1"; else file="screencast"; fi

echo "Saving screencast in '$file'."
ffmpeg -f alsa -i default \
       -i /dev/video1 \
       -c:a flac \
       -qscale 0 $file.mkv
