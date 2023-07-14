#!/bin/bash
xhost +local:root

docker run -it \
	--rm \
	--name turtlebotDocker \
	--net=host \
    --env="DISPLAY" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --env=NVIDIA_VISIBLE_DEVICES=all \
    --env=NVIDIA_DRIVER_CAPABILITIES=all \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    -e ROS_MASTER_URI=http://192.168.1.111:11311 \
	-e ROS_IP=192.168.1.111 \
    --runtime=nvidia \
    -v /home/suman/ARTHUR/ARTHUR/system_intallation/turtlebot3_sim_docker/turtlebot3_simulations/:/workspace/src/turtlebot3_simulations \
    turtlebot3_sim_gazebo \
    bash