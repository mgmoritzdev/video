#!/usr/bin/env bash
if [ -n "$1" ]; then INPUT="$1"; else INPUT="/tmp/video.mkv"; fi
if [ -n "$2" ]; then OUTPUT="$2"; else OUTPUT="/tmp/mobile.mp4"; fi

ffmpeg -i $INPUT -c:v libx264 -profile:v baseline -level 3.0 -pix_fmt yuv420p $OUTPUT
