﻿cmake_minimum_required (VERSION 3.8)

project (MyProgram1 CXX)

my_find_src_files (src_files MyProgram1)
add_executable (MyProgram1 ${src_files})
my_add_compile_options (MyProgram1)

if (MSVC)
   install(TARGETS MyProgram1 DESTINATION "C:/aaa_prime/RisLib")
elseif (MYMODE STREQUAL ubuntu OR MYMODE STREQUAL wsl) 
   install(TARGETS MyProgram1 DESTINATION "/opt/prime/bin")
elseif (MYMODE STREQUAL beagle)
   install(CODE "execute_process(COMMAND_ECHO STDOUT
      COMMAND c:/windows/system32/openssh/scp ${CMAKE_CURRENT_BINARY_DIR}/MyProgram1 pi@rpx22:/opt/prime/bin)")
elseif (MYMODE STREQUAL steno)
   install(CODE "execute_process(COMMAND_ECHO STDOUT
      COMMAND scp ${CMAKE_CURRENT_BINARY_DIR}/MyProgram1 root@stenotgt:/home/root/stenograph/bin)")
endif()

return()
install(CODE "execute_process(COMMAND_ECHO STDOUT COMMAND ${PROJECT_SOURCE_DIR}/my_install.bat)")
return()

