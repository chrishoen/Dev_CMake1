cmake_minimum_required (VERSION 3.8)

project (MyProgram2 CXX)
my_find_src_files (src_files MyProgram2)
add_executable (MyProgram2 ${src_files})
my_add_compile_options (MyProgram2)
#my_add_pch (MyProgram2)

my_inc_import_MyStaticLib(MyProgam2)
my_lib_import_MyStaticLib(MyProgam2)


