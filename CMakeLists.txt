cmake_minimum_required(VERSION 3.1)
project(Foo)
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_library(Foo ${CMAKE_CURRENT_SOURCE_DIR}/src/foo.cc)

target_include_directories(Foo PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/header)
