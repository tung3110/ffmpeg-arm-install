#!/bin/bash

apt -y update && apt -y upgrade && apt -y install  libsdl2-dev libva-dev ffmpeg libavformat-dev libavcodec-dev libswscale-dev zip wget libxcb-shm0-dev libxcb-xfixes0-dev

cd FFmpeg-install

unzip ffmpeg.zip

cd ffmpeg

cp libffmpeg/libx264.so.155  /usr/lib/aarch64-linux-gnu/libx264.so.155

cp libffmpeg/libsrt.so.1  /usr/lib/x86_64-linux-gnu/libsrt.so.1

cp libffmpeg/libcrypto.so.1.1 /usr/lib/x86_64-linux-gnu/libcrypto.so.1.1

cp ffmpeg /usr/bin

cp ffplay /usr/bin


