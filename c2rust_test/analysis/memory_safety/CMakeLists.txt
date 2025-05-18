cmake_minimum_required(VERSION 3.13.4)
project(MemorySafetyPass)

find_package(LLVM 17 REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})

# 设置C++标准为C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 添加编译选项，启用调试信息
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti -g -O0")
set(CMAKE_BUILD_TYPE Debug)

add_library(MemorySafetyPass MODULE MemorySafetyAnalysis.cpp)

# 设置库属性
set_target_properties(MemorySafetyPass PROPERTIES
    PREFIX ""
    SUFFIX ".so")

# 链接LLVM库
target_link_libraries(MemorySafetyPass ${LLVM_LIBRARIES})
