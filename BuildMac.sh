#!/bin/(shell)
if [ ! -d "MacBuild" ]; then
  sudo mkdir MacBuild
fi

cd MacBuild

sudo cmake  .. -G Xcode

sudo cmake --build . -t libprotobuf-lite --config Release
