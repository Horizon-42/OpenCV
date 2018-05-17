#版本
cmake_minimum_required(VERSION 2.8)

#项目名称
project(test)

#设置opencv所在目录，为后面find_packeage提供位置
#OpenCV_DIR为opencv源码编译后得到的文件夹
set(OpenCV_DIR /Users/horizon/Desktop/OpenCV/opencv-3.4.1/release)

#会在opencv所在目录查找配置文件OpenCVConfig.cmake
find_package(OpenCV REQUIRED)

#向工程添加源文件
add_executable(test src/main.cpp)

#添加连接库
target_link_libraries(test ${OpenCV_LIBS})

