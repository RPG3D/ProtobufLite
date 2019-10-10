
xmake  f -p android  --android_sdk="%ANDROID_HOME%"  --ndk="%ANDROID_NDK_HOME%" --ndk_cxxstl=gnustl_shared  -a armv7-a ProtobufLite
xmake -b ProtobufLite

xmake  f -p android  --android_sdk="%ANDROID_HOME%"  --ndk="%ANDROID_NDK_HOME%" --ndk_cxxstl=gnustl_shared  -a arm64-v8a ProtobufLite
xmake -b ProtobufLite


pause


