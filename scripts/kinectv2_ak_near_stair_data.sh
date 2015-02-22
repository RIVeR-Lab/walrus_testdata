#!/usr/bin/env bash
find `catkin_find walrus_testdata kinectv2/stairs/ak_near` -name '*.pcd' -print0 | xargs -0 rosrun walrus_testdata multi_pcd_pub /cloud_pcd:=/walrus/boom/kinect/depth/points
