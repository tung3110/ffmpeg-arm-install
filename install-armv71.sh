#!/bin/bash

apt -y update && apt -y install  libsdl2-dev libva-dev ffmpeg libavformat-dev libavcodec-dev libswscale-dev zip wget libxcb-shm0-dev libxcb-xfixes0-dev && language-pack-en && update-locale LANG=en_US.UTF-8 && systemctl set-environment LANG=en_US.UTF-8

chmod -R u+x ffmpeg-arm-install

cd ffmpeg-arm-install

unzip ffmpeg-armv71.zip

cp libffmpeg/libx264.so.155  /usr/lib/arm-linux-gnueabihf/libx264.so.155

cp libffmpeg/libsrt.so.1  /usr/lib/arm-linux-gnueabihf/libsrt.so.1

cp libffmpeg/libcrypto.so.1.1 /usr/lib/arm-linux-gnueabihf/libcrypto.so.1.1

cp ffmpeg /usr/bin

cp ffplay /usr/bin
