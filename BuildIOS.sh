#!/bin/(shell)
if [ ! -d "IOSBuild" ]; then
  sudo mkdir IOSBuild
fi

cd IOSBuild

sudo cmake  .. -G Xcode -DCMAKE_TOOLCHAIN_FILE=../cmake/ios.toolchain.cmake -DPLATFORM=OS64

sudo cmake --build . -t libprotobuf-lite --config Release
