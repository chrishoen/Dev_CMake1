﻿cmake_minimum_required (VERSION 3.8)

set (CMAKE_USER_MAKE_RULES_OVERRIDE "${CMAKE_CURRENT_LIST_DIR}/MyOverrides.cmake")
set (CMAKE_EXECUTE_PROCESS_COMMAND_ECHO STDOUT)
include(MyCodeMacros.cmake)
include(MyGlobalImports.cmake)
include(MyLocalImports.cmake)
include(MyPrecompiledHeader.cmake)
include(MySpecial.cmake)

project ("Dev_CMake1")
my_special1() 

add_subdirectory ("MyProgram1")
return()

add_subdirectory ("CommonLib")
add_subdirectory ("ExampleThread1")
return()


add_subdirectory ("Test")
return()

