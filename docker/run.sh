#!/bin/bash
set -e
set -u

export DISPLAY=$DISPLAY
echo "setting display to $DISPLAY"

docker run -dit -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY --gpus=all --name=isaacgym_container --volume=/home/danielepc/cps_project:/opt/isaacgym/cps_project isaacgym 

