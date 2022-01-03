#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_lib_import_MyStaticLib _target)

   target_link_libraries(${_target} MyStaticLib)

endfunction()

function(my_inc_import_MyStaticLib _target)

   target_include_directories(${_target} PRIVATE $<TARGET_PROPERTY:MyStaticLib,INTERFACE_INCLUDE_DIRECTORIES>)

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_lib_import_MySharedLib _target)

   target_link_libraries(${_target} MySharedLib)

endfunction()

function(my_inc_import_MySharedLib _target)

   target_include_directories(${_target} PRIVATE $<TARGET_PROPERTY:MySharedLib,INTERFACE_INCLUDE_DIRECTORIES>)

endfunction()




