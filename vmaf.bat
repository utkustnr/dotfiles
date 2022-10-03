@echo off
:vmaf
set /p input="n_subsample : "
set /p reference="Drag and drop reference video: "
set /p modified="Drag and drop encoded video: "
cls

:process
ffmpeg -i %modified% -i %reference% -filter_complex libvmaf=n_subsample=%input% -f null -
pause