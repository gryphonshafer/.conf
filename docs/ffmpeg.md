# ffmpeg

## Merge video and audio

    ffmpeg -i video.mp4 -i audio.wav -c:v copy -c:a aac output.mp4

## Copying without re-encoding

    ffmpeg -i video.mp4 -i audio.wav -c copy output.mkv

## Replace an audio stream

    ffmpeg -i video.mp4 -i audio.wav -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 output.mp4

## Split MP3

    ffmpeg -i story.mp3 -f segment -segment_time 600 -c copy story_%03d.mp3

## Merge MP3s

    ffmpeg -i "concat:file1.mp3|file2.mp3" -acodec copy output.mp3
