# RTSP Generator

在 Docker 镜像内封装 ffmpeg & ffserver，将本地 MP4 文件转换为 RTSP 直播流服务

## 使用姿势

```bash

# 下载镜像
docker pull reg.qiniu.com/quxiao-public/rtsp_generator

# 运行服务
# -v 指定本地的视频文件
docker run --rm --name rtsp_generator -p "18090:18090" -p "19990:19990" -d -v ~/Downloads/politician.mp4:/data/video.mp4 reg.qiniu.com/quxiao-public/rtsp_generator

# 使用 VLC 等工具，查看 rtsp 流
rtsp://<your_ip>:19990/video.mp4

# 停止服务
docker stop rtsp_generator
```
