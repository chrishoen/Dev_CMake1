#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_post_build_bin _target)

   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND scp ${_target} debian@bbx:/opt/prime/bin)

   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ssh debian@bbx "sudo chmod 777 /opt/prime/bin/${_target}")

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_post_build_lib _target)

   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND scp lib${_target}.so debian@bbx:/opt/prime/lib)

   add_custom_command(
      TARGET  ${_target}
      POST_BUILD
      COMMAND ssh debian@bbx "sudo chmod 777 /opt/prime/lib/lib${_target}.so")

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************
