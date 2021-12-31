#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_special1)

   message(STATUS "my_special1***********************************************************BEGIN")
   if(MSVC)
      message(STATUS "my_special MSVC")
   elseif(NOT CMAKE_SYSTEM_VERSION EQUAL 101)
      message(STATUS "my_special LINUX")
   elseif(CMAKE_SYSTEM_VERSION EQUAL 101)
      message(STATUS "my_special LINUX BEAGLE")
   elseif(CMAKE_SYSTEM_VERSION EQUAL 201)
      message(STATUS "my_special LINUX DART")
   else()
      message(STATUS "my_special LINUX UBUNTU")
   endif()

   message(STATUS "my_special1***********************************************************END")
endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

