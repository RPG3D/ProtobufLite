
xmake  f -p android  -a armv7-a --ndk_cxxstl=gnustl_shared --ar=%ANDROID_NDK_ROOT%/toolchains/arm-linux-androideabi-4.9/prebuilt/windows-x86_64/arm-linux-androideabi/bin/ar.exe
xmake -b

xmake  f -p android  -a arm64-v8a --ndk_cxxstl=gnustl_shared --ar=%ANDROID_NDK_ROOT%/toolchains/aarch64-linux-android-4.9/prebuilt/windows-x86_64/aarch64-linux-android/bin/ar.exe
xmake -b

pause


