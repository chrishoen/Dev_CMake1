#*******************************************************************************
#*******************************************************************************
#*******************************************************************************

function(my_init_export_variables)

   if(MSVC)
      set (MyInstallPath      "C:\\aaa_cprint\\bin" PARENT_SCOPE)
   else()
      set (MyInstallPath      "/opt/cprint/bin" PARENT_SCOPE)
   endif()

endfunction()

#*******************************************************************************
#*******************************************************************************
#*******************************************************************************
