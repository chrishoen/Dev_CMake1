﻿
add_library(MyLibrary1 STATIC IMPORTED)
find_library(MYLIBRARY1_LIBRARY_PATH MyLibrary1 HINTS "${CMAKE_CURRENT_LIST_DIR}/../../")
set_target_properties(MyLibrary1 PROPERTIES IMPORTED_LOCATION "${MYLIBRARY1_LIBRARY_PATH}")