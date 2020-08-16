# cmake 最低版本要求
cmake_minimum_required(VERSION 3.12)
set (Demo_VERSION_MAJOR 1) # 项目主版本号
set (Demo_VERSION_MINOR 0) # 项目次版本号

# project name
set(PROJECT_NAME word2vec)
project(${PROJECT_NAME} LANGUAGES CXX C VERSION 1.2.0)

# 编译设置
set(CMAKE_CXX_STANDARD 11)
# debug设置
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")


file(MAKE_DIRECTORY bin)
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY bin/)

set (CMAKE_INCLUDE_CURRENT_DIR ON)

SET (CMAKE_LIBRARY_OUTPUT_DIRECTORY
        ${PROJECT_BINARY_DIR}/bin
        CACHE PATH
        "Single Directory for all"
        )

SET (CMAKE_RUNTIME_OUTPUT_DIRECTORY
        ${PROJECT_BINARY_DIR}/bin
        CACHE PATH
        "Single Directory for all"
        )

SET (CMAKE_ARCHIVE_OUTPUT_DIRECTORY
        ${PROJECT_BINARY_DIR}/lib
        CACHE PATH
        "Single Directory for all"
        )

# 检查系统是否支持 pow 函数
include (${CMAKE_ROOT}/Modules/CheckFunctionExists.cmake)
check_function_exists (pow HAVE_POW)

# 下面写一些自定义的头文件函数
include_directories (include)

# if compiler is Clang, link libc++, otherwise, link default libstdc++
if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -stdlib=libc++ -lc++abi")
endif()


# 加入一个配置头文件，用于处理 CMake 对源码的设置
configure_file (
        "${PROJECT_SOURCE_DIR}/config.h.in"
        "${PROJECT_BINARY_DIR}/config.h"
)

# 查找当前目录下的所有源文件, 并将名称保存到 DIR_SRCS 变量
aux_source_directory(. DIR_SRCS)

# 添加子目录
add_subdirectory(src/array)

find_program( CLANG_TIDY NAMES clang-tidy)
message("\n--------------------------------\n")
message("PROJECT NAME:\t\t${PROJECT_NAME}")
message("CMAKE_SYSTEM_NAME:\t${CMAKE_SYSTEM_NAME}")
message("CMAKE_C_COMPILER:\t${CMAKE_C_COMPILER}")
message("CMAKE_CXX_COMPILER:\t${CMAKE_CXX_COMPILER}")
message("CMAKE_GENERATOR:\t${CMAKE_GENERATOR}")
message("CMAKE_BUILD_TYPE:\t${CMAKE_BUILD_TYPE}")
message("CMAKE_BINARY_DIR:\t${CMAKE_BINARY_DIR}")
message("CMAKE_MODULE_PATH:\t${CMAKE_MODULE_PATH}")
message("CMAKE_PREFIX_PATH:\t${CMAKE_PREFIX_PATH}")
message("clang-tidy:\t\t${CLANG_TIDY}")
message("\n--------------------------------\n")

# boost package
set(BOOST_ROOT /usr/local/Cellar/boost/1.68.0)
find_package(Boost COMPONENTS regex system REQUIRED)
if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    MESSAGE( STATUS "Boost_INCLUDE_DIRS = ${Boost_INCLUDE_DIRS}.")
    MESSAGE( STATUS "Boost_LIBRARIES = ${Boost_LIBRARIES}.")
    MESSAGE( STATUS "Boost_LIB_VERSION = ${Boost_LIB_VERSION}.")
    # target_link_libraries (${PROJECT_NAME} ${Boost_LIBRARIES})
endif()

# 多CPP文件目录 (多个main函数）

file (GLOB_RECURSE files src/*.c)
foreach (file ${files})
    string(REGEX REPLACE ".+/(.+)\\..*" "\\1" exe ${file})
    # 子目录中添加编译选项
    target_link_libraries(${exe} pthread)
    target_link_libraries (${exe} ${Boost_LIBRARIES})
    add_executable (${exe} ${file})
    message (\ \ \ \ --\ src/${exe}.c\ will\ be\ compiled\ to\ bin/${exe})
endforeach ()

# 添加链接库
target_link_libraries (${PROJECT_NAME} ${Boost_LIBRARIES})
