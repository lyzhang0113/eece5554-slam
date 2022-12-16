# EECE5554-SLAM

## Getting started on Tutorial

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
catkin build
```

Dataset (.bag files) to run the tutorial: [ijrr_euroc_mav_dataset](http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/vicon_room1/)

Since the configuration file for the EurocMav dataset has already been created, we can simply do the following. 

```
roscore # term 0
source devel/setup.bash # term 1
roslaunch ov_msckf subscribe.launch config:="euroc_mav"
```

In another two terminals we can run the following. For RVIZ, one can open the `ov_msckf/launch/display.rviz` configuration file. You should see the system publishing features and a state estimate.

```
rviz # term 2
rosbag play V1_01_easy.bag # term 3

```

## Dataset

### EuRoC

```
roslaunch ov_msckf eece5554.launch config:="euroc_mav" dataset:="V1_01_easy" bag:="<path to bag>"
```

### NUANCE
```
roslaunch ov_msckf nuance.launch bag:="<path to bag>"
```


