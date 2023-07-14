docker run -it \
	--rm \
	--name roscoreDocker \
	--net=host \
	-e ROS_IP=192.168.1.111 \
	turtlebot3_sim_gazebo \
	bash