@echo off

:first
if "%~1" EQU "" set /p input="Drag and drop video : " & goto :second
if "%~1" NEQ "" set input="%~1" & goto :second

:second
if "%~2" EQU "" set /p qp="QP value : " & goto :process
if "%~2" NEQ "" set qp="%~2" & goto :process

:process
for /F "delims=" %%i in (%input%) do set dirname=%%~dpi
for /F "delims=" %%i in (%input%) do set basename=%%~ni
ffmpeg -hwaccel cuda -i %input% -pix_fmt yuv420p -map 0:v -map 0:a -map_metadata 0 -c:v hevc_nvenc -rc constqp -qp %qp% -b:v 0K -c:a aac -b:a 384k -movflags +faststart -movflags use_metadata_tags "%dirname%%basename%_CRF%qp%_HEVC.mp4"