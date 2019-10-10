
xmake  f -p android  --android_sdk="%ANDROID_HOME%"  --ndk="%ANDROID_NDK_HOME%"  -a armv7-a ProtobufLite
xmake -b ProtobufLite

xmake  f -p android  --android_sdk="%ANDROID_HOME%"  --ndk="%ANDROID_NDK_HOME%"  -a arm64-v8a ProtobufLite
xmake -b ProtobufLite


pause


