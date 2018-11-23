#!/bin/sh
set -x

ffserver &

sleep 3

ffmpeg -re -fflags +genpts -stream_loop -1 -i /data/video.ts -qmax 50 -qcomp 0 http://localhost:18090/feed.ffm
