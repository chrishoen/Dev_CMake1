#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_post_build_copy_bin _target)

   set(_command scp -p ${_target} ${MyTargetHostName}:${MyCopyBinToDir})
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND echo ${_command}
      VERBATIM)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ${_command}
      VERBATIM)

   set(_command ssh ${MyTargetHostName} "${MySudo}chmod 777 ${MyCopyBinToDir}/${_target}")
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND echo ${_command}
      VERBATIM)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ${_command}
      VERBATIM)

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_post_build_copy_lib _target)

   set(_command scp -p lib${_target}.so ${MyTargetHostName}:${MyCopyLibToDir})
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND echo ${_command}
      VERBATIM)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ${_command}
      VERBATIM)

   set(_command ssh ${MyTargetHostName} "${MySudo}chmod 777 ${MyCopyLibToDir}/lib${_target}.so")
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND echo ${_command}
      VERBATIM)
   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ${_command}
      VERBATIM)

   return()


   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND scp lib${_target}.so ${MyTargetHostName}:/opt/prime/lib)

   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ssh ${MyTargetHostName} "sudo chmod 777 /opt/prime/lib/lib${_target}.so")

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************
