#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_init_config_variables)

      set (MyTargetType "beagle" PARENT_SCOPE)

      set (MyScpToBin "debian@bbx:/opt/prime/bin" PARENT_SCOPE)
      set (MyScpToLib "debian@bbx:/opt/prime/lib" PARENT_SCOPE)

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************
