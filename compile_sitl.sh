#!/bin/bash

echo "It will ask your password because it's running docker and chown using sudo..."
sudo docker run -e "TARGET=SITL" --rm -it -v `pwd`:/opt/betaflight betaflight/betaflight-build && sudo chown -R $USER:$USER obj/*
