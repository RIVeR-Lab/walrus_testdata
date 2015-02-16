cmake_minimum_required(VERSION 2.8.3)
project(walrus_testdata)

find_package(catkin REQUIRED)

catkin_package()

#############
## Install ##
#############

install(DIRECTORY kinect2
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
