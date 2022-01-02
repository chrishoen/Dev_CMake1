#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_special1)

   message(STATUS "my_special1***********************************************************BEGIN")
   message(STATUS "CMAKE_SYSTEM         " ${CMAKE_SYSTEM})
   message(STATUS "CMAKE_SYSTEM_VERSION " ${CMAKE_SYSTEM_VERSION})
   message(STATUS "CMAKE_BUILD_TYPE     " ${CMAKE_BUILD_TYPE})
   return()

   if(MSVC)
      message(STATUS "my_special MSVC")
   elseif(CMAKE_SYSTEM_VERSION EQUAL 101)
      message(STATUS "my_special LINUX BEAGLE")
   elseif(CMAKE_SYSTEM_VERSION EQUAL 201)
      message(STATUS "my_special LINUX DART")
   else()
      message(STATUS "my_special LINUX UBUNTU")
   endif()
   message(STATUS "Using toolchain file: ${CMAKE_TOOLCHAIN_FILE}")
   message(STATUS "my_special1***********************************************************END")
endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

