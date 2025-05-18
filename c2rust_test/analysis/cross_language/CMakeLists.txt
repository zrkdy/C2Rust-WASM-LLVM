cmake_minimum_required(VERSION 3.10)
project(CrossLanguagePass)

# 查找LLVM包
find_package(LLVM REQUIRED CONFIG)

# 添加LLVM定义和包含路径
add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})

# 设置C++标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 添加编译选项
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti -g -O0 -g")

# 创建共享库
add_library(CrossLanguagePass MODULE
  CrossLanguageAnalysis.cpp
)

# 设置输出目录
set_target_properties(CrossLanguagePass PROPERTIES
  LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}"
)

# 设置正确的后缀
if(APPLE)
  set_target_properties(CrossLanguagePass PROPERTIES
    SUFFIX ".dylib"
  )
elseif(UNIX)
  set_target_properties(CrossLanguagePass PROPERTIES
    PREFIX ""
  )
endif()

# 添加链接选项
target_link_libraries(CrossLanguagePass
  PRIVATE
  ${LLVM_AVAILABLE_LIBS}
)