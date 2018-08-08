#version
cmake_minimum_required(VERSION 2.8)

#project name
project(detect_pimple)

set(OpenCV_DIR /Users/horizon/Desktop/OpenCV/opencv-3.4.2/build)

find_package(OpenCV REQUIRED)

add_executable(detect_pimple src/detect_pimple.cpp)

target_link_libraries(detect_pimple ${OpenCV_LIBS})