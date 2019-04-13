#!/usr/bin/env bash

ffmpeg -i /tmp/compressed.mp4 -r 10 /tmp/gif.gif -hide_banner
