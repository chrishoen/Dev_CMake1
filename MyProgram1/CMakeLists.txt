cmake_minimum_required (VERSION 3.8)

project (MyProgram1 CXX)

my_find_src_files (src_files MyProgram1)
add_executable (MyProgram1 ${src_files})
my_add_compile_options (MyProgram1)

install(CODE "execute_process(COMMAND my_install.bat)")
return()

if (MSVC)
   install(TARGETS MyProgram1 DESTINATION "C:/aaa_prime/RisLib")
elseif (MYMODE STREQUAL ubuntu OR MYMODE STREQUAL wsl) 
   install(TARGETS MyProgram1 DESTINATION "/opt/prime/bin")
elseif (MYMODE STREQUAL beagle)
endif()
   
