#!/usr/bin/env bash

ffmpeg -r 30 -s 948x514 -f x11grab -i :0.0+6,6 -vcodec msmpeg4v2 -qscale 0 /tmp/video.avi
