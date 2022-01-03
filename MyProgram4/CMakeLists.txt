cmake_minimum_required (VERSION 3.8)

project (MyProgram4 CXX)
my_find_src_files (src_files MyProgram4)
add_executable (MyProgram4 ${src_files})
my_add_compile_options (MyProgram4)
my_add_pch (MyProgram4)

target_include_directories(MyProgram4 PUBLIC ${PROJECT_SOURCE_DIR})

my_import_global_include_MySharedLib(MyProgram4)
my_import_global_lib_MySharedLib(MyProgram4)


if (MSVC)
   install(TARGETS MyProgram4 DESTINATION ${MyCopyBinToDir})
elseif (MyTargetType STREQUAL ubuntu)
   my_post_build_copy_bin(MyProgram4)
elseif (MyTargetType STREQUAL beagle)
   my_post_build_scp_bin(MyProgram4)
elseif (MyTargetType STREQUAL dart)
   my_post_build_scp_bin(MyProgram4)
endif()
