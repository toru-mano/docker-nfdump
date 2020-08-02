FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    nfdump \
    nfdump-sflow \
    && apt-get clean && rm -rf /var/lib/apt/lists/* && rm -rf /usr/share/doc/*
