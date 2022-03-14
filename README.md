# <img width='20px' src='https://github.com/simple-icons/simple-icons/raw/develop/icons/ffmpeg.svg#gh-light-mode-only'></img><img width='20px' src='https://ffmpeg.org/img/ffmpeg3d_white_20.png#gh-dark-mode-only'></img> FFmpeg Cheat Sheet

## Table of Contents

- [**Video**](#video)
  - [Convert Video](#convert-video)
  - [Extract Streams From a Video File](#extract-streams-from-a-video-file)
  - [Crop Video](#crop-video)
- [**Audio**](#audio)
  - [Convert Audio](#convert-audio)

## Video

### Convert Video

#### ffmpeg default config for output

```bash
  ffmpeg -i input.mp4 output.mkv
```

#### Define codec and bit rate

```bash
  ffmpeg -i input.mp4 -c:v <video codec> -b:v <video bitrate> output.mkv
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

### Crop Video

#### Starting from 01m00s to the end without re-encoding

```bash
  ffmpeg -ss 00:01:00 -i input.mp4 -c copy output.mp4
```

#### Starting from 01m00s to 02m00s without re-encoding

```bash
  ffmpeg -ss 00:01:00 -to 00:02:00 -i input.mp4 -c copy output.mp4
```

### Concatenate Videos

Create a file with all the files to be concatenated, all files must have the same streams (same codecs, same time base, resolution, etc.) but can be wrapped in different container formats, using the following sintax:

```bash
  # files_list.txt
  file '/path/to/file1.ext'
  file '/path/to/file2.ext'
  file '/path/to/file3.ext'
```

The `-safe 0` above is not required if the paths are relative.

#### Concatenate With Concat Demuxer

```bash
  ffmpeg -f concat -safe 0 -i files_list.txt -c copy output.wav
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
