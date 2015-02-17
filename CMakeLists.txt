cmake_minimum_required(VERSION 2.8.3)
project(walrus_testdata)

find_package(catkin REQUIRED COMPONENTS
  pcl_ros
  roscpp
)

find_package(PCL 1.7 REQUIRED)
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

catkin_package()

###########
## Build ##
###########

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(${PROJECT_NAME}/multi_pcd_pub src/multi_pcd_pub.cpp)
set_target_properties(${PROJECT_NAME}/multi_pcd_pub
  PROPERTIES OUTPUT_NAME multi_pcd_pub)
target_link_libraries(${PROJECT_NAME}/multi_pcd_pub
  ${catkin_LIBRARIES}
  ${PCL_LIBRARIES}
)


#############
## Install ##
#############

install(TARGETS ${PROJECT_NAME}/multi_pcd_pub
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(PROGRAMS scripts/kinectv2_stair_data.sh
  DESTINATION ${CATKIN_GLOBAL_BIN_DESTINATION})

install(DIRECTORY kinectv2
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
