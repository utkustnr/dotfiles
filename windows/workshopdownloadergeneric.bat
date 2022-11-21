@echo off

:: MODS IDs

:: CUP CORE
set Mods[0]=583496184

:: CUP MAPS
set Mods[1]=583544987

:: MODS ID END

echo This Will Install/Update Arma3 Mods
echo.
echo Author: Joew
echo Credits: tinboye - Gives me the cmd to update mods.
echo.

:: STEAM CONFIGS

:: OPTION 1: ASKING FOR STEAM LOGIN AND PASS

set /p login=Steam Login: 
echo.
set /p pass=Steam Pass: 
echo.

:: END OPTION 1

:: OPTION 2: Set your steam and pass and save it. (I don't recommend this for security)

::set "login=YOUR_STEAM_LOGIN"
::set "pass=YOUR_STEAM_PASS"

:: END OPTION 2

:: END STEAM CONFIGS

:: Folder Mods => SteamCMD\steamapps\workshop\content\107410

set "x=0"

:SymLoop
if defined Mods[%x%] (
	call set list=%list% +"workshop_download_item 107410 %%Mods[%x%]%%" validate
    set /a "x+=1"
    GOTO :SymLoop
)
echo.
steamcmd +login %login% %pass%%list% +quit