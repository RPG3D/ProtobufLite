
if not exist "%~dp0%VCBuild" (
	mkdir VCBuild
)

cd VCBuild

call cmake  ../

call cmake --build . -t libprotobuf-lite --config Release
