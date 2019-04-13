#!/usr/bin/env bash

ffmpeg -i /tmp/video.avi -vcodec libx264 -crf 22 -threads 0 /tmp/compressed.mp4
