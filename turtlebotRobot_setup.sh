#!/bin/bash

if [ "$1" = "1" ]; then
    echo "\033[33msudo apt-get install libudev-dev\033[0m"
    sudo apt-get install -y libudev-dev
    echo "\033[33msudo apt-get install ros-noetic-rosserial-python\033[0m"
    sudo apt-get install -y ros-noetic-rosserial-python
fi

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
echo "export export LDS_MODEL=LDS-02" >> ~/.bashrc

echo "\033[33mrm -rf turtlebot\033[0m"
rm -rf turtlebot

#echo "\033[33mtar zxvf turtlebot.tar.gz\033[0m"
#tar zxvf turtlebot.tar.gz

if [ -f "turtlebot.tar.gz" ]; then
    echo "\033[33mtar zxvf turtlebot.tar.gz\033[0m"
    tar zxvf turtlebot.tar.gz
else
    echo "\033[33mCreating turtlebot directory and cloning repositories\033[0m"
    mkdir turtlebot
    cd turtlebot
    mkdir src
    cd src
    git clone -b develop https://github.com/ROBOTIS-GIT/ld08_driver.git
    git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3.git
    git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
    cd ..
    catkin_make -j1
    cd ..
    tar zcvf turtlebot.tar.gz turtlebot
fi
