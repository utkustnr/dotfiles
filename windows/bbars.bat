@echo off

:first
if "%~1" EQU "" set /p input="Drag and drop video : " & goto :debug
if "%~1" NEQ "" set input="%~1" & goto :debug

:debug
for /F "delims=" %%i in (%input%) do set dirname=%%~dpi
for /F "delims=" %%i in (%input%) do set basename=%%~ni
goto :second

:second
if "%~2" EQU "" (
	set clipname="%dirname%%basename%_bb.mp4"
	goto :third
	)
if "%~2" NEQ "" (
	set clipname="%dirname%%~2.mp4" 
	goto :third
	)

:third
ffmpeg -ss 5 -t 2 -i %input% -vf "cropdetect" -f null - 2>&1| awk "/crop=/ {print $NF}" | awk "NR == 1" > %dirname%.tmp.txt
sleep 2
set /p crop=<%dirname%.tmp.txt
del %dirname%.tmp.txt

:process
ffmpeg -i %input% -vf %crop% -c:a copy %clipname%
pause