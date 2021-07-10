#!/bin/bash

# docker exec -it sitl bash # to open a second terminal
echo "Run: 'gazebo --verbose ./iris_arducopter_demo.world' inside the container".
docker run --rm --name sitl -it --gpus all --user $(id -u):$(id -g) --group-add sudo -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/home/sitl_user/host --device /dev/dri/  --network host --workdir="/home/sitl_user/ardupilot_gazebo/" ricardodeazambuja/gazebo9_cudagl_sitl:latest bash #./start_sim.sh
