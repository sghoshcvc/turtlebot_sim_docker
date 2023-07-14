#!/bin/bash

# set -e
#
# nohup Xvfb :1 -screen 0 1024x768x16 &> xvfb.log &
# DISPLAY=:1.0
# export DISPLAY

export ROS_MASTER_URI=http://192.168.1.111:11311
export ROS_IP=192.168.1.111
export TURTLEBOT3_MODEL=burger
#export DISPLAY=:0

#export GAZEBO_MODEL_PATH=[...]/models:$GAZEBO_MODEL_PATH

source "/opt/ros/${ROS_DISTRO}/setup.bash"
source "${ROS_WS}/devel/setup.bash"
echo "source /workspace/devel/setup.bash" >> ~/.bashrc
echo "export TURTLEBOT3_MODEL=burger" >> ~/.bashrc

source ~/.bashrc


roslaunch turtlebot3_gazebo turtlebot3_empty_world.launch 

#sleep 30 &
#echo "waiting 60 seconds for glovebox to be up..." & sleep 30

#roslaunch glovebox_gazebo spawn_robot_A.launch  &
#sleep 30 &
#echo "waiting 100 seconds for robot A to be up..." & sleep 70

#roslaunch glovebox_gazebo spawn_robot_B.launch  &
#sleep 30 &
#echo "waiting 100 seconds for robot B to be up..." & sleep 70
# sleep 60

# roslaunch glovebox_gazebo spawn_rviz.launch  &

# Load the Gazebo simulator
#roslaunch glovebox_gazebo spawn.launch

#sleep 10

#cd ~/gzweb
#npm start &


#sleep 30

#python /home_robot.py

# Run ROS core
#roscore &

#sleep 15


exec "$@"

# roslaunch kortex_gazebo spawn_kortex_robot.launch

