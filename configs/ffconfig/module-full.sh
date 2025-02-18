#! /usr/bin/env bash

export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-everything"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-small"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-avcodec"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-avformat"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-swresample"

# 外部库
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-libmp3lame"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-libopus"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-libfdk_aac"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-libflac"

# 启用编码器
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-encoder=libmp3lame"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-encoder=libflac"

# 启用解码器
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=mp3"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=flac"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=m4a"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=aac"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-decoder=opus"

# 启用复用器
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-muxer=mp3"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-muxer=m4a"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-muxer=aac"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-muxer=flac"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-muxer=opus"

# 启用解复用器
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=mp3"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=flac"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=m4a"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=aac"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-demuxer=opus"

# 启用协议
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --enable-protocol=file"

# 禁用不需要的程序（根据需要调整）
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-programs"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-ffmpeg"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-ffplay"
export COMMON_FF_CFG_FLAGS="$COMMON_FF_CFG_FLAGS --disable-ffprobe"
