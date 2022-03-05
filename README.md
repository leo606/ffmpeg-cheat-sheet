# FFMPEG Cheat Sheet

# Table of Contents

- [Video](#video)
  - [Convert Video](#convert-video)

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
