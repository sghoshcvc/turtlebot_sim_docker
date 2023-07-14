#!/bin/bash

DOCKER=docker
CONTAINER_NAME=turtlebot3_sim_gazebo

$DOCKER build -t $CONTAINER_NAME .

