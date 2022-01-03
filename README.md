# Dev_CMake1
cmake test programs, c++, vstudio, open folder, cmake, linux, windows

## Build target platforms
``` markdown

This supports builds for the following platforms:
beagle  -- builds on windows for a debian arm7 target, tested on beaglebone black, raspberrypi4
dart    -- builds on remote ubuntu for a yocto aarch64 target, tested on veriscite dart
ubuntu  -- builds on remote ubuntu for a ubuntu target, tested on intel nuc
windows -- builds on windows for a windows target, tested on intel nuc
```
## CMake Files
``` markdown

This supports builds for the 
set_for_linux.bat            -- setup cmake environment for linux
set_for_win.bat              -- setup cmake environment for windows
CMakeSettings.json           -- current cmake settings, either windows or linux
CMakeSettings_linux.json     -- cmake settings for linux
CMakeSettings_win.json       -- cmake settings for windows
CMakeLists.txt               -- Solution main cmake file
MyCMake.cmake                -- cmake macros for building projects
MyLocalImports.cmake         -- cmake macros for importing local libraries
```
