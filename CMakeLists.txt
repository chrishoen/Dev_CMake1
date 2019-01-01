cmake_minimum_required (VERSION 3.8)

project ("Dev_CMake1")

set(CMAKE_INSTALL_PREFIX "/var/tmp/install")

add_subdirectory ("MyProject1")
add_subdirectory ("MyLibrary1")

