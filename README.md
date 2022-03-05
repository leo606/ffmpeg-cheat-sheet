# FFmpeg Cheat Sheet

## Table of Contents

- [Video](#video)
  - [Convert Video](#convert-video)
  - [Extract Streams From a Video File](#extract-streams-from-a-video-file)
- [Audio](#audio)
  - [Convert Audio](#convert-audio)

## Video

### Convert Video

#### ffmpeg default config for output
```bash
  ffmpeg -i input.mp4 output.mkv
```

#### Define codec and bit rate
```bash
  ffmpeg -i input.mp4 -c:v <video codec> b:v <video bitrate> output.mkv
```
_`-c:a` and `-b:a` for audio parameters_

#### Change Video Container without re-encoding
```bash
  ffmpeg -i input.mp4 -c copy output.mkv
```

### Extract Streams From a Video File

#### Extract video stream
```bash
  ffmpeg -i input.mp4 -map 0:v -c copy output.mkv
```

#### Extract audio stream
```bash
  ffmpeg -i input.mp4 -map 0:a -c copy output.m4a
```

## Audio

### Convert Audio

#### ffmpeg default config for output
```bash
  ffmpeg -i input.wav output.flac
```

#### Define codec and bit rate
```bash
  ffmpeg -i input.wav -c:a aac -b:a 96k output.m4a
```