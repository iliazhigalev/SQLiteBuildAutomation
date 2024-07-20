cmake_minimum_required(VERSION 3.10)

project(MyProjectConan)

set(CMAKE_CXX_STANDARD 11)

include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)

find_package(fmt REQUIRED)

add_executable(my_project_conan main.cpp)

target_link_libraries(my_project_conan fmt::fmt)
