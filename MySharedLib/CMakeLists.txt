cmake_minimum_required (VERSION 3.8)

project (MySharedLib CXX)

my_find_src_files (src_files MySharedLib)
add_library (MySharedLib SHARED ${src_files})
my_add_compile_options_so (MySharedLib)
my_add_pch (MySharedLib)

target_include_directories(MySharedLib PUBLIC ${PROJECT_SOURCE_DIR})

if (MVC)
elseif (MyTargetType STREQUAL ubuntu)
   my_post_build_copy_lib(MySharedLib)
elseif (MyTargetType STREQUAL beagle)
   my_post_build_scp_lib(MySharedLib)
elseif (MyTargetType STREQUAL dart)
   my_post_build_scp_lib(MySharedLib)
endif()
