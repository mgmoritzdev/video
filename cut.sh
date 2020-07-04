#!/usr/bin/env bash

if [ -n "$1" ];
then
    INPUT="$1";
else
    echo './cut.sh <input-file> <output-file> <start-time> <output-time>'
    echo 'e.g.:'
    echo './cut.sh input.mp4 output.mp4 00:00:00.0 00:00:00.0'
    exit 1;
fi

if [ -n "$2" ];
then
    OUTPUT="$2";
else
    echo './cut.sh <input-file> <output-file> <start-time> <output-time>'
    echo 'e.g.:'
    echo './cut.sh input.mp4 output.mp4 00:00:00.0 00:00:00.0'
    exit 1;
fi

if [ -n "$3" ];
then
    START="$3";
else
    echo './cut.sh <input-file> <output-file> <start-time> <output-time>'
    echo 'e.g.:'
    echo './cut.sh input.mp4 output.mp4 00:00:00.0 00:00:00.0'
    exit 1;
fi

if [ -n "$4" ];
then
    DURATION="$4";
else
    echo './cut.sh <input-file> <output-file> <start-time> <output-time>'
    echo 'e.g.:'
    echo './cut.sh input.mp4 output.mp4 00:00:00.0 00:00:00.0'
    exit 1;
fi

ffmpeg -ss $START -i $INPUT -c copy -t $DURATION $OUTPUT
