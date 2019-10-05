
if not exist "D:\android-ndk-r16b" (
bitsadmin.exe /transfer "Download NDK16B" https://dl.google.com/android/repository/android-ndk-r16b-windows-x86_64.zip D:\android-ndk-r16b.zip

7z x D:/android-ndk-r16b.zip -oD:
)



set NDK_ROOT=D:/android-ndk-r16b

if not exist "%~dp0%NDKBuild" (
	mkdir NDKBuild
)


set PB_SOURCE=%~dp0

cd NDKBuild


cmake -G "MinGW Makefiles" -DCMAKE_TOOLCHAIN_FILE=%NDK_ROOT%/build/cmake/android.toolchain.cmake -DCMAKE_MAKE_PROGRAM=%NDK_ROOT%/prebuilt/windows-x86_64/bin/make.exe -DANDROID_STL=gnustl_shared   %PB_SOURCE%

cmake --build . -t libprotobuf-lite
