cmake_minimum_required(VERSION 3.10)
project(DataFlowAnalysis)

# 查找LLVM包
find_package(LLVM REQUIRED CONFIG)

# 添加LLVM定义和包含路径
add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

# 设置编译选项
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")

# 创建共享库
add_library(DataFlowPass MODULE
  DataFlowAnalysis.cpp
)

# 设置输出目录
set_target_properties(DataFlowPass PROPERTIES
  LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}"
  PREFIX ""  # 移除lib前缀，使生成的文件名为DataFlowPass.so而不是libDataFlowPass.so
)

# 设置编译选项
if(NOT LLVM_ENABLE_RTTI)
  set_target_properties(DataFlowPass PROPERTIES
    COMPILE_FLAGS "-fno-rtti"
  )
endif()