cmake_minimum_required (VERSION 3.8)

project (MyStaticLib CXX)

my_find_src_files (src_files MyStaticLib)
my_find_inc_files (inc_files)
add_library (MyStaticLib STATIC ${src_files})
my_add_compile_options (MyStaticLib)
#my_add_pch (MyStaticLib)

target_include_directories(MyStaticLib INTERFACE ${PROJECT_SOURCE_DIR})

