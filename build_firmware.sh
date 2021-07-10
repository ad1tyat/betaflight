#!/bin/bash

docker run --rm -ti -v `pwd`:/opt/betaflight betaflight:latest make TARGET=$1
