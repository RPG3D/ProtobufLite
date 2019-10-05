

set NDK_ROOT=%ANDROID_NDK_HOME%

if not exist "%~dp0%NDKBuild" (
	mkdir NDKBuild
)


set PB_SOURCE=%~dp0

cd NDKBuild


cmake -G "MinGW Makefiles" -DCMAKE_TOOLCHAIN_FILE=%NDK_ROOT%/build/cmake/android.toolchain.cmake -DCMAKE_MAKE_PROGRAM=%NDK_ROOT%/prebuilt/windows-x86_64/bin/make.exe -DANDROID_STL=gnustl_shared   %PB_SOURCE%

cmake --build . -t libprotobuf-lite
