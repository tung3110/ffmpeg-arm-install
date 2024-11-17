Cài đặt ffmpeg để stream webRTC. Phiên bản cho Arm

1. Install:
   
   apt -y update && apt -y install git && git clone https://github.com/tung3110/ffmpeg-arm-install.git && bash ./ffmpeg-arm-install/install.sh

3. Test thử:
   
   wget https://schedule.truyenthanhso.vn/VsClient/muabao.mp3

   ffmpeg -re -i muabao.mp3 -acodec opus -strict -2 -ar 48000 -b:a 32k -ac 1 -f webrtc "https://yourdomain.com/rtc/v1/whip/?app=live&stream=livestream123456"
