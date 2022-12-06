# EECE5554-SLAM

## Getting started

Follow the instructions on the [OpenVINS Wiki](https://docs.openvins.com/gs-installing.html) to build this repository.

Getting Started: https://docs.openvins.com/gs-tutorial.html

The enviroment we used is on Ubuntu 20.04 ROS 1 Noetic (Uses OpenCV4.2), and the following dependencies needs to be installed:

```
sudo apt-get install libeigen3-dev libboost-all-dev libceres-dev
sudo apt-get install python3-catkin-tools python3-osrf-pycommon # ubuntu 20.04
sudo apt-get install libeigen3-dev libboost-all-dev libceres-dev
sudo apt-get install python3-dev python3-matplotlib python3-numpy python3-psutil python3-tk # for python3 systems

```

Then the OpenVINS package coule be built using the following: (Please note that your system needs to have at least 16GB of RAM)

```
catkin build -DDISABLE_MATPLOTLIB=ON # build without viz
```

## Dataset

Dataset (.bag files) to run the tutorial: http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/vicon_room1/
