#!/bin/bash

# 초기 설정 모드(인자 1)의 경우 종속성 라이브러리 설치 진행
if [ "$1" = "1" ]; then
    echo "\033[33msudo dpkg --add-architecture armhf\033[0m"
    sudo dpkg --add-architecture armhf
    echo "\033[33msudo apt-get update\033[0m"
    sudo apt-get update
    echo "\033[33msudo apt-get install -y libc6:armhf\033[0m"
    sudo apt-get install -y libc6:armhf
fi


export OPENCR_PORT=/dev/ttyACM0
export OPENCR_MODEL=burger_noetic

cd $HOME

if [ -f "opencr_update.tar.bz2" ]; then
    rm -rf opencr_update
    echo "\033[33mtar zxvf ./opencr_update.tar.bz2\033[0m"
    tar -xvf opencr_update.tar.bz2
else
    wget https://github.com/ROBOTIS-GIT/OpenCR-Binaries/raw/master/turtlebot3/ROS1/latest/opencr_update.tar.bz2
fi

cd ./opencr_update
./update.sh $OPENCR_PORT $OPENCR_MODEL.opencr
