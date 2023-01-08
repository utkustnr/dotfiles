@echo off

set "filtro=%1"
if [%filtro%]==[] (
    set "filtro=*.mp4"
    )

for /R %%a in (%filtro%) do call :doWork "%%a"

    PAUSE
    exit /B

:doWork
    ffmpeg -v error -i %1 -f null - > "%~1.log" 2>&1