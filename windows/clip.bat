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
	set clipname="%dirname%%basename%_clip.mp4"
	goto :third
	)
if "%~2" NEQ "" (
	set clipname="%dirname%%~2.mp4" 
	goto :third
	)

:third
if "%~3" EQU "" set /p from="Cut from : " & goto :forth
if "%~3" NEQ "" set from=%~3 & goto :forth

:forth
if "%~4" EQU "" set /p to="Cutting length : " & goto :process
if "%~4" NEQ "" set to=%~4 & goto :process

:process
ffmpeg -i %input% -ss %from% -t %to% -async 1 %clipname%
pause