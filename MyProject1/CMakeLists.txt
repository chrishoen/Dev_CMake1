cmake_minimum_required (VERSION 3.8)

project (MyProject1 CXX)
file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/*.cpp)
add_executable (MyProject1 ${SRC_FILES})

target_include_directories(MyProject1 PRIVATE MyLibrary1)
target_link_libraries(MyProject1 MyLibrary1)

message(STATUS "********************************* ")
message(STATUS "CMAKE_CXX_FLAGS " ${CMAKE_CXX_FLAGS})
message(STATUS "CMAKE_EXE_LINKER_FLAGS " ${CMAKE_EXE_LINKER_FLAGS})
message(STATUS "CMAKE_INSTALL_PREFIX " ${CMAKE_INSTALL_PREFIX})

install(TARGETS MyProject1 DESTINATION bin)
