# Cài đặt ffmpeg để stream webRTC. Phiên bản cho aarch64

   apt -y install git && git clone https://github.com/tung3110/ffmpeg-arm-install.git && bash ./ffmpeg-arm-install/install.sh
   
# Cài đặt ffmpeg để stream webRTC. Phiên bản cho armv71

   apt -y install git && git clone https://github.com/tung3110/ffmpeg-arm-install.git && bash ./ffmpeg-arm-install/install-armv71.sh   
   
# Test thử:
   
   wget https://schedule.truyenthanhso.vn/VsClient/muabao.mp3

   ffmpeg -re -i muabao.mp3 -acodec opus -strict -2 -ar 48000 -b:a 32k -ac 1 -f webrtc "https://yourdomain.com/rtc/v1/whip/?app=live&stream=livestream123456"

   ffplay -i -fflags nobuffer -max_delay 0 -max_probe_packets 1 -analyzeduration 0 -flags +low_delay "webrtc://yourdomain.com/rtc
/v1/whep/?app=live&stream=tungdev3" -nodispp 
