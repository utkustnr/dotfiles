@echo off

:first
if "%~1" EQU "" set /p input="Drag and drop video : " & goto :second
if "%~1" NEQ "" set input="%~1" & goto :second

:second
if "%~2" EQU "" goto :third
if "%~2" NEQ "" goto :fourth

:third
if "%~3" EQU "" set /p qp="QP value : " & goto :h265
if "%~3" NEQ "" set qp="%~2" & goto :h265

:fourth
if "%~3" EQU "" set /p bit="Bit value : " & goto :h264
if "%~3" NEQ "" set bit="%~2" & goto :h264

:h264
for /F "delims=" %%i in (%input%) do set dirname=%%~dpi
for /F "delims=" %%i in (%input%) do set basename=%%~ni
ffmpeg -hwaccel cuda -i %input% -pix_fmt yuv420p -map 0:v -map 0:a -map_metadata 0 -c:v h264_nvenc -preset slow -profile:v main -b:v %bit%k -maxrate %bit%k -minrate %bit%k -bufsize %bit%k -c:a aac -b:a 0k -movflags +faststart -movflags use_metadata_tags "%dirname%%basename%_264.mp4"
goto :finish

:h265
for /F "delims=" %%i in (%input%) do set dirname=%%~dpi
for /F "delims=" %%i in (%input%) do set basename=%%~ni
ffmpeg -hwaccel cuda -i %input% -pix_fmt yuv420p -map 0:v -map 0:a -map_metadata 0 -c:v hevc_nvenc -preset p7 -profile:v main -rc constqp -qp %qp% -b:v 0K -c:a aac -b:a 0k -movflags +faststart -movflags use_metadata_tags "%dirname%%basename%_CRF%qp%_HEVC.mp4"
goto :finish

:finish
echo finished
pause