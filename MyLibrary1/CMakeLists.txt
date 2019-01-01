cmake_minimum_required (VERSION 3.8)

project (MyLibrary1 CXX)
file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/*.cpp)
file(GLOB INC_FILES ${PROJECT_SOURCE_DIR}/*.h)
add_library (MyLibrary1 STATIC ${SRC_FILES})

target_include_directories(MyLibrary1 PUBLIC ${PROJECT_SOURCE_DIR})

#install(TARGETS MyLibrary1 DESTINATION lib)
#install(FILES ${INC_FILES} DESTINATION include)
