# CMake 最低版本号要求
cmake_minimum_required(VERSION 3.12)

# 项目信息
project(word2vec)

set(CMAKE_CXX_STANDARD 11)

add_executable(word2vec src/compute-accuracy.c src/distance.c src/word2phrase.c src/word2vec.c src/word-analogy.c)