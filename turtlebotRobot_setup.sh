#!/bin/bash
cd $HOME

echo "\033[33mInit ~/.bashrc\033[0m"
cp /etc/skel/.bashrc ~/.bashrc

echo "\033[33mAdd source /opt/ros/noetic/setup.bash\033[0m"
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

echo "\033[33mAdd source /home/ubuntu/turtlebot/devel/setup.bash\033[0m"
echo "source /home/ubuntu/turtlebot/devel/setup.bash" >> ~/.bashrc

echo "\033[33mAdd export TURTLEBOT3_MODEL=burger\033[0m"
echo "export TURTLEBOT3_MODEL=burger" >> ~/.bashrc

echo "\033[33mAdd export LDS_MODEL=LDS-01\033[0m"
echo "export export LDS_MODEL=LDS-01" >> ~/.bashrc

echo "\033[33mrm -rf turtlebot\033[0m"
rm -rf turtlebot

echo "\033[33mtar zxvf turtlebot.tar.gz\033[0m"
tar zxvf turtlebot.tar.gz

