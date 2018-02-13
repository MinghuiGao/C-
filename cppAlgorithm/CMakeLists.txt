cmake_minimum_required(VERSION 3.6)
project(cppAlgorithm)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp chapter2/阶乘之和/MutipleSteps.cpp chapter2/阶乘之和/MutipleSteps.h chapter2/数据结构和基本排序/Node.cpp chapter2/数据结构和基本排序/Node.h chapter2/数据结构和基本排序/SortAlgorithm.cpp chapter2/数据结构和基本排序/SortAlgorithm.h chapter2/fopen读写文件/FopenTool.cpp chapter2/fopen读写文件/FopenTool.h chapter2/execersise/Subse2.cpp chapter2/execersise/Subse2.h chapter3/ArraySome.cpp chapter3/ArraySome.h)
#可执行文件
add_executable(cppAlgorithm ${SOURCE_FILES})
#动态库
#add_library(cppAlgorithm SHARED ${SOURCE_FILES})
#静态库
#add_library(cppAlgorithm ${SOURCE_FILES})