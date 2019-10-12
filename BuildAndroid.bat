
xmake  f -p android  --android_sdk="%ANDROID_HOME%"  --ndk="%ANDROID_NDK_HOME%"  -a armv7-a --ndk_cxxstl=gnustl_shared --ar="%ANDROID_NDK_HOME%/toolchains\arm-linux-androideabi-4.9\prebuilt\windows-x86_64\arm-linux-androideabi\bin/ar.exe"
xmake -r -v

xmake  f -p android  --android_sdk="%ANDROID_HOME%"  --ndk="%ANDROID_NDK_HOME%"  -a arm64-v8a --ndk_cxxstl=gnustl_shared  --ar="%ANDROID_NDK_HOME%/toolchains\aarch64-linux-android-4.9\prebuilt\windows-x86_64\aarch64-linux-android\bin/ar.exe"
xmake -r -v


pause


