#!/bin/sh

gst-launch tcpclientsrc host=192.168.0.18 port=9000 \
    ! matroskademux \
    ! vp8dec ! ffmpegcolorspace \
    ! ximagesink

# tcpclientsrc host=192.168.0.18 port=9000 protocol=none \