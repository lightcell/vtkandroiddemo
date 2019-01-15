#!/bin/bash
cmake -DCMAKE_TOOLCHAIN_FILE=$NDK_ROOT/build/cmake/android.toolchain.cmake  \
-DCMAKE_ANDROID_NDK=$NDK_ROOT \
-DCMAKE_SYSTEM_NAME=Android \
-DCMAKE_VERBOSE_MAKE=ON \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_CXX_FLAGS='-fpic -fexceptions -frtti' \
-DCMAKE_C_FLAGS='-fpic' \
-DCMAKE_ANDROID_STL_TYPE='c++_static' \
-DCMAKE_SYSTEM_VERSION=24 \
-DVTK_ANDROID_BUILD=ON \
-DBUILD_EXAMPLES=ON \
-DANDROID_NATIVE_API_LEVEL=24 \
-DOPENGL_ES_VERSION=3.0 ..

make -j8

