#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_import_local_lib_MyStaticLib _target)

   target_link_libraries(${_target} MyStaticLib)

endfunction()

function(my_import_local_include_MyStaticLib _target)

   target_include_directories(${_target} PRIVATE $<TARGET_PROPERTY:MyStaticLib,INTERFACE_INCLUDE_DIRECTORIES>)

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_import_local_lib_MySharedLib _target)

   target_link_libraries(${_target} MySharedLib)

endfunction()

function(my_import_local_include_MySharedLib _target)

   target_include_directories(${_target} PRIVATE $<TARGET_PROPERTY:MySharedLib,INTERFACE_INCLUDE_DIRECTORIES>)

endfunction()




