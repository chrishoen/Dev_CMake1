cmake_minimum_required (VERSION 3.8)

set (CMAKE_USER_MAKE_RULES_OVERRIDE "${CMAKE_CURRENT_LIST_DIR}/MyOverrides.cmake")
include(MyPrecompiledHeader.cmake)
include(MyCodeMacros.cmake)
include(MyPostBuild.cmake)
include(MyGlobalImports.cmake)
include(MyLocalImports.cmake)
include(MySpecial.cmake)

project ("Dev_CMake1")
my_init_global_import_variables()
my_init_post_build_variables()
my_special1() 

add_subdirectory ("MyStaticLib")
add_subdirectory ("MySharedLib")
add_subdirectory ("MyProgram2")
add_subdirectory ("MyProgram3")
return()

add_subdirectory ("MyProgram1")
return()

