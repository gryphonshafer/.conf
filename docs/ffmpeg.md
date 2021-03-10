# ffmpeg

## Merge video and audio

    ffmpeg -i video.mp4 -i audio.wav -c:v copy -c:a aac output.mp4

## Copying without re-encoding

    ffmpeg -i video.mp4 -i audio.wav -c copy output.mkv

## Replace an audio stream

    ffmpeg -i video.mp4 -i audio.wav -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 output.mp4
