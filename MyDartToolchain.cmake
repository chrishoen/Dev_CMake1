# specify the system
SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_PROCESSOR aarch64)
SET(CMAKE_SYSTEM_VERSION 201)

# specify the cross compiler
SET(CMAKE_FIND_ROOT_PATH /opt/fslc-xwayland/3.1/sysroots/x86_64-fslcsdk-linux)
SET(CMAKE_C_COMPILER     /opt/fslc-xwayland/3.1/sysroots/x86_64-fslcsdk-linux/usr/bin/aarch64-fslc-linux/aarch64-fslc-linux-gcc)
SET(CMAKE_CXX_COMPILER   /opt/fslc-xwayland/3.1/sysroots/x86_64-fslcsdk-linux/usr/bin/aarch64-fslc-linux/aarch64-fslc-linux-g++)

# for cmake 3.8
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)


