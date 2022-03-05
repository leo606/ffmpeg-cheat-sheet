#! /bin/bash

# source: https://linuxconfig.org/how-to-batch-convert-music-files-with-ffmpeg

srcExt=$1
destExt=$2

srcDir=$3
destDir=$4

opts=$5

for file in "$srcDir"/*.$srcExt; do
  basePath=${file%.*}
  baseName=${basePath##*/}

  ffmpeg -i "$file" $opts "$destDir"/"$baseName"."$destExt"
done