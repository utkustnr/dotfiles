@echo off
:clip
set /p input="Drag and drop video : "
set /p from="Cut from : "
set /p to="Cutting length : "
for /F "delims=" %%i in (%input%) do set dirname=%%~dpi
for /F "delims=" %%i in (%input%) do set basename=%%~ni
cls

:process
ffmpeg -i %input% -ss %from% -t %to% -async 1 "%dirname%%basename%_clip.mp4"
pause