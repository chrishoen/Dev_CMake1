cmake_minimum_required (VERSION 3.8)

project (MyProgram1 CXX)

my_find_src_files (src_files MyProgram1)
add_executable (MyProgram1 ${src_files})
my_add_compile_options (MyProgram1)


message(STATUS "BEGIN*****************************************************************")

function(my_function)

   execute_process(COMMAND_ECHO STDOUT
      COMMAND c:/windows/system32/openssh/scp22 c:/Temp22/dummy.txt pi@rpx:/opt/prime/bin
      RESULT_VARIABLE CMD_RESULT
      RESULTS_VARIABLE CMD_RESULTS
      OUTPUT_VARIABLE CMD_OUTPUT
      ERROR_VARIABLE CMD_ERROR
      ECHO_OUTPUT_VARIABLE
      ECHO_ERROR_VARIABLE
      )

   message(STATUS "RESULT        " ${CMD_RESULT})
   message(STATUS "RESULTS       " ${CMD_RESULTS})
   message(STATUS "OUTPUT        " ${CMD_OUTPUT})
   message(STATUS "ERROR         " ${CMD_ERROR})

endfunction()

my_function()

message(STATUS "END*******************************************************************")

install(CODE "my_function()")
return()

if (MSVC)
   install(TARGETS MyProgram1 DESTINATION "C:/aaa_prime/RisLib")
elseif (MYMODE STREQUAL ubuntu OR MYMODE STREQUAL wsl) 
   install(TARGETS MyProgram1 DESTINATION "/opt/prime/bin")
elseif (MYMODE STREQUAL beagle)
   install(CODE "execute_process(COMMAND_ECHO STDOUT
      COMMAND c:/windows/system32/openssh/scp ${CMAKE_CURRENT_BINARY_DIR}/MyProgram1 pi@rpx:/opt/prime/bin)")
elseif (MYMODE STREQUAL steno)
   install(CODE "execute_process(COMMAND_ECHO STDOUT
      COMMAND scp ${CMAKE_CURRENT_BINARY_DIR}/MyProgram1 root@stenotgt:/home/root/stenograph/bin)")
endif()

