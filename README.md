# Description
```
pip install ffmpeg-python
```
example manual command:
```
ffmpeg -i input.mov -c:v libx265 -preset medium -crf 28 -c:a copy output.mp4
```
# To do

1. Create a bitrate check and skip videos with a low bitrate
2. Set up work with folders
3. Configure file replacement
4. Check work with cron

# Site sources.

FFmpeg progress formatter at: https://github.com/althonos/ffpb 
Simplified version and explanation at: https://stackoverflow.com/a/64439347/12866353
Example code for compressing video at: https://gist.github.com/ESWZY/a420a308d3118f21274a0bc3a6feb1ff
Example ffmpeg comands at: https://shotstack.io/learn/compress-video-ffmpeg/
