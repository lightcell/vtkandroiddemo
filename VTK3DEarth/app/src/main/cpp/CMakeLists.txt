cmake_minimum_required(VERSION 3.4.1)
set(CMAKE_SYSTEM_NAME Android)
set(CMAKE_SYSTEM_VERSION "24")
set(CMAKE_ANDROID_ARCH_ABI "armeabi-v7a")
set(CMAKE_ANDROID_NDK "/home/VTK/android-ndk-r16b")
set(VTK_DIR "/home/VTK/vtk-android/lib/cmake/vtk-8.2")
project(JavaVTK)

find_package(VTK REQUIRED)

include(${VTK_USE_FILE})

set(sources  main.cxx)

add_library(JavaVTK SHARED ${sources})
target_link_libraries(JavaVTK android  log  EGL GLESv3 stdc++ ${VTK_LIBRARIES})
