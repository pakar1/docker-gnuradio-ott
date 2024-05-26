#!/bin/sh


docker build --progress=plain --no-cache -f Dockerfile-ubuntu-base -t custom/sdr-ubuntu-base:latest . 2>&1 | tee build.log

docker build --progress=plain --no-cache -f Dockerfile-sdr-apps -t custom/sdr-apps:latest . 2>&1 | tee build.log

docker build --progress=plain --no-cache -f Dockerfile-custom-builds -t custom/sdr-builds:latest . 2>&1 | tee build.log

