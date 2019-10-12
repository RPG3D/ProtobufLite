
xmake  f -p android  -a armv7-a --ndk_cxxstl=gnustl_shared
xmake -r -v

xmake  f -p android  -a arm64-v8a --ndk_cxxstl=gnustl_shared
xmake -r -v

pause


