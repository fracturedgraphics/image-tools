FROM ubuntu:20.04

ARG INKSCAPE_VERSION=1.0+r73+1~ubuntu20.04.1
ARG IMAGEMAGICK_VERSION=8:6.9.10.23+dfsg-2.1ubuntu11

RUN apt-get update && \
    apt-get install --no-install-recommends -y software-properties-common && \
    add-apt-repository ppa:inkscape.dev/stable && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install --no-install-recommends -y inkscape=$INKSCAPE_VERSION && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install --no-install-recommends -y imagemagick=$IMAGEMAGICK_VERSION && \
    rm -rf /var/lib/apt/lists/*
