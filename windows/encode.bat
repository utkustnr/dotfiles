@echo off

:select
set /p input="Drag and drop video : "
set /p qp="QP value : "
for /F "delims=" %%i in (%input%) do set dirname=%%~dpi
for /F "delims=" %%i in (%input%) do set basename=%%~ni
cls


:process
ffmpeg -hwaccel cuda -i %input% -pix_fmt yuv420p -map 0:v -map 0:a -map_metadata 0 -c:v hevc_nvenc -rc constqp -qp %qp% -b:v 0K -c:a aac -b:a 384k -movflags +faststart -movflags use_metadata_tags "%dirname%%basename%_CRF%qp%_HEVC.mp4"
goto :select