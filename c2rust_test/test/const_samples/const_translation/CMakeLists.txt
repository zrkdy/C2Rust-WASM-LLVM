cmake_minimum_required(VERSION 3.10)
project(ConstTranslationAnalysis)

# 查找LLVM包
find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# 添加LLVM定义和包含路径
add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

# 设置C++标准
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 创建共享库目标
add_library(ConstTranslation SHARED ConstTranslationAnalysis.cpp)

# 获取LLVM组件库
llvm_map_components_to_libnames(llvm_libs support core irreader analysis passes)

# 链接LLVM库
target_link_libraries(ConstTranslation ${llvm_libs})

# 设置输出名称
set_target_properties(ConstTranslation PROPERTIES
    OUTPUT_NAME "ConstTranslation"
    PREFIX "lib"
)

# 安装目标
install(TARGETS ConstTranslation DESTINATION lib)