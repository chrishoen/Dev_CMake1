cmake_minimum_required (VERSION 3.8)

project (MyProject CXX)
my_find_src_files (src_files MyProject)
add_executable (MyProject ${src_files})
my_add_compile_options (MyProject)
my_add_precompiled_header (MyProject stdafx.h)

my_inc_import_MyLibrary(MyProject)

my_lib_import_MyLibrary(MyProject)
