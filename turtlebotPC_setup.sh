#!/bin/bash
cd $HOME

echo "\033[33mInit ~/.bashrc\033[0m"
cp /etc/skel/.bashrc ~/.bashrc

echo "\033[33mAdd source /opt/ros/noetic/setup.bash\033[0m"
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

echo "\033[33mAdd export TURTLEBOT3_MODEL=burger\033[0m"
echo "export TURTLEBOT3_MODEL=burger" >> ~/.bashrc

echo "\033[33msudo apt-get update\033[0m"
sudo apt-get install -y update

echo "\033[33msudo apt-get install ros-noetic-joy\033[0m"
sudo apt-get install -y ros-noetic-joy

echo "\033[33msudo apt-get install ros-noetic-teleop-twist-joy\033[0m"
sudo apt-get install -y ros-noetic-teleop-twist-joy

echo "\033[33msudo apt-get install ros-noetic-teleop-twist-keyboard\033[0m"
sudo apt-get install -y ros-noetic-teleop-twist-keyboard

echo "\033[33msudo apt-get install ros-noetic-laser-proc\033[0m"
sudo apt-get install -y ros-noetic-laser-proc

echo "\033[33msudo apt-get install ros-noetic-rgbd-launch\033[0m"
sudo apt-get install -y ros-noetic-rgbd-launch

echo "\033[33msudo apt-get install ros-noetic-rosserial-arduino\033[0m"
sudo apt-get install -y ros-noetic-rosserial-arduino

echo "\033[33msudo apt-get install ros-noetic-rosserial-python\033[0m"
sudo apt-get install -y ros-noetic-rosserial-python

echo "\033[33msudo apt-get install ros-noetic-rosserial-client\033[0m"
sudo apt-get install -y ros-noetic-rosserial-client

echo "\033[33msudo apt-get install ros-noetic-rosserial-msgs\033[0m"
sudo apt-get install -y ros-noetic-rosserial-msgs

echo "\033[33msudo apt-get install ros-noetic-amcl\033[0m"
sudo apt-get install -y ros-noetic-amcl

echo "\033[33msudo apt-get install ros-noetic-map-server\033[0m"
sudo apt-get install -y ros-noetic-map-server

echo "\033[33msudo apt-get install ros-noetic-move-base\033[0m"
sudo apt-get install -y ros-noetic-move-base

echo "\033[33msudo apt-get install ros-noetic-urdf\033[0m"
sudo apt-get install -y ros-noetic-urdf

echo "\033[33msudo apt-get install ros-noetic-xacro\033[0m"
sudo apt-get install -y ros-noetic-xacro

echo "\033[33msudo apt-get install ros-noetic-compressed-image-transport\033[0m"
sudo apt-get install -y ros-noetic-compressed-image-transport

echo "\033[33msudo apt-get install ros-noetic-rqt*\033[0m"
sudo apt-get install -y ros-noetic-rqt*

echo "\033[33msudo apt-get install ros-noetic-rviz\033[0m"
sudo apt-get install -y ros-noetic-rviz

echo "\033[33msudo apt-get install ros-noetic-gmapping\033[0m"
sudo apt-get install -y ros-noetic-gmapping

echo "\033[33msudo apt-get install ros-noetic-navigation\033[0m"
sudo apt-get install -y ros-noetic-navigation

echo "\033[33msudo apt-get install ros-noetic-interactive-markers\033[0m"
sudo apt-get install -y ros-noetic-interactive-markers

echo "\033[33msudo apt-get install ros-noetic-dynamixel-sdk\033[0m"
sudo apt-get install -y ros-noetic-dynamixel-sdk

echo "\033[33msudo apt-get install ros-noetic-turtlebot3-msgs\033[0m"
sudo apt-get install -y ros-noetic-turtlebot3-msgs

echo "\033[33msudo apt-get install ros-noetic-turtlebot3\033[0m"
sudo apt-get install -y ros-noetic-turtlebot3

echo "\033[33msudo apt-get install net-tools\033[0m"
sudo apt-get install -y net-tools

echo "\033[33mrm -rf turtlebot\033[0m"
rm -rf turtlebot

echo "\033[33mmkdir turtlebot\033[0m"
mkdir turtlebot

echo "\033[33mcd ./turtlebot\033[0m"
cd ./turtlebot

echo "\033[33mmkdir src\033[0m"
mkdir src

echo "\033[33mcd src\033[0m"
cd src

CURRENT_DIR=$(pwd)
echo "\033[33m$CURRENT_DIR\033[0m"

#echo "\033[33msource /opt/ros/noetic/setup.bash033[0m"
