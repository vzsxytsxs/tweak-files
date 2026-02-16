@echo off
TITLE Discord Debloat by CatGamerOP, modded by vzsxytsxs
echo Starting...
chcp 65001>nul
setlocal enabledelayedexpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
)
powershell -Command "Invoke-WebRequest-OutFile" > nul 2> nul
cd /d "!appdata!"
set /a startver=0
echo:
echo:
for /f "delims=" %%a in ('dir /b "Discord*"') do (
	set /a startver+=1
	set "version[!startver!]=%%a"
	echo                             !ESC![38;2;114;137;218m[!ESC![0m !startver! !ESC![38;2;114;137;218m]!ESC![0m %%a
)

:menu
cls
call :logo
echo                                                  Programmed by !ESC![38;2;175;134;255mTeam K? 
echo.
echo.
echo                                            !ESC![38;2;175;134;255m[!ESC![0m 1 !ESC![38;2;175;134;255m]!ESC![0m Debloat - Without Noise Suppression   
echo. 
echo                                            !ESC![38;2;175;134;255m[!ESC![0m 2 !ESC![38;2;175;134;255m]!ESC![0m Debloat - With Noise Suppression
echo.
echo                                            !ESC![38;2;175;134;255m[!ESC![0m 3 !ESC![38;2;175;134;255m]!ESC![0m Debloat - Delete RPC module
echo.
echo.
set /p input=""
if "%input%"=="1" (
    goto debloat2
) else if "%input%"=="2" (
    goto debloat
) else if "%input%"=="3" (
    goto rpc
) else (
    echo invalid choice. try again.
    pause
    goto menu
)

:debloat2
TASKKILL /T /F /IM Discord.exe >nul 2>&1
cd /d %LOCALAPPDATA%\Discord\app*\modules >nul 2>&1
for %%a in ("discord_krisp-1") do rmdir /s /q "%%~a" >nul 2>&1

:debloat
:: Needed for Update.exe
TASKKILL /T /F /IM Discord.exe >nul 2>&1
%LOCALAPPDATA%\Discord\Update.exe >nul 2>&1
rmdir /s /q "%LOCALAPPDATA%\Discord\Packages" >nul 2>&1

del /f /q %LOCALAPPDATA%\Discord\Discord_updater*, %LOCALAPPDATA%\Discord\SquirrelSetup* >nul 2>&1

:: Create a bat file to start Discord with parameters
cd %LOCALAPPDATA%\Discord
@echo off
echo cd "" "%LOCALAPPDATA%\Discord\app*" > StartDiscord.bat
echo start "" "Discord.exe" --ProcessStart Discord.exe --disable-animations --disable-extensions --disable-logging --disable-software-rasterizer --disable-updater --disable-web-security --enable-gpu-rasterization --enable-zero-copy --ignore-gpu-blocklist --no-sandbox ) >> StartDiscord.bat

cd %LOCALAPPDATA%\Discord >nul 2>&1
del /f /q Update.exe >nul 2>&1

cd %LOCALAPPDATA%\Discord\app* >nul 2>&1
del /f /q app.ico >nul 2>&1
del /f /q chrome*.pak >nul 2>&1
del /f /q debug.log >nul 2>&1
rmdir /s /q swiftshader >nul 2>&1
del /f /q %localappdata%\Discord\SquirrelSetup.log >nul 2>&1
del /f /q %localappdata%\Discord\Discord_updater_rCURRENT.log >nul 2>&1
rmdir /s /q "%HOMEPATH%\appdata\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc"
rmdir /s /q "%localappdata%\Discord\download"
del discord_game_sdk_x64.dll /a /s
del discord_game_sdk_x86.dll /a /s
del /q "%localappdata%\Discord\app-*\Microsoft.Gaming.XboxApp.XboxNetwork.winmd" >nul 2>&1
del /q "%localappdata%\Discord\app-*\discord_wer.dll" >nul 2>&1
del /q "%localappdata%\Discord\app-*\d3dcompiler_47.dll" >nul 2>&1
del /q "%localappdata%\Discord\app-*\Discord.exe.sig" >nul 2>&1
del /q "%localappdata%\Discord\app-*\libEGL.dll" >nul 2>&1
del /q "%localappdata%\Discord\app-*\libGLESv2.dll" >nul 2>&1
del /q "%localappdata%\Discord\app-*\vk_swiftshader.dll" >nul 2>&1
del /q "%localappdata%\Discord\app-*\vulkan-1.dll" >nul 2>&1
del /q "%localappdata%\Discord\app-*\snapshot_blob.bin" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_voice-1\discord_voice\gpu_encoder_helper.exe" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_voice-1\discord_voice\selfie_segmentation.tflite" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_voice-1\discord_voice\selfie_segmentation_landscape.tflite" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_utils-1\discord_utils\manifest.json" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_utils-1\discord_utils\node_modules\bindings\LICENSE.md" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_utils-1\discord_utils\node_modules\bindings\README.md" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_utils-1\discord_utils\node_modules\file-uri-to-path\.npmignore" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_utils-1\discord_utils\node_modules\file-uri-to-path\History.md" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_utils-1\discord_utils\node_modules\file-uri-to-path\LICENSE" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_utils-1\discord_utils\node_modules\file-uri-to-path\package.json" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_utils-1\discord_utils\node_modules\file-uri-to-path\README.md" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_utils-1\discord_utils\node_modules\windows-notification-state\LICENSE" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_utils-1\discord_utils\node_modules\windows-notification-state\README.md" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_utils-1\discord_utils\package.json" >nul 2>&1
rmdir /s /q "%localappdata%\Discord\app*\modules\discord_utils-1\discord_utils\node_modules\node-addon-api" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_voice-1\discord_voice\manifest.json" >nul 2>&1
del /q "%localappdata%\Discord\app-*\modules\discord_voice-1\discord_voice\package.json" >nul 2>&1

:: Modules Cleanup
cd /d %LOCALAPPDATA%\Discord\app*\modules >nul 2>&1
for %%a in ("discord_modules-1" "discord_erlpack-1" "discord_desktop_overlay-1" "discord_overlay2-2" "discord_notifications-1" "discord_game_utils" "discord_cloudsync-1" "discord_dispatch-1" "discord_game_utils-1" "discord_hook-1" "discord_media-1" "discord_overlay2-1" "discord_rpc-1" "discord_spellcheck-1" "discord_zstd-1") do rmdir /s /q "%%~a" >nul 2>&1

:: Languages Cleanup
cd /d %LOCALAPPDATA%\Discord\app* >nul 2>&1
copy "locales\en-US.pak" "%LOCALAPPDATA%\Discord\" >nul 2>&1
copy "locales\pt-BR.pak" "%LOCALAPPDATA%\Discord\" >nul 2>&1
rmdir /s /q "locales" >nul 2>&1
mkdir "locales" >nul 2>&1
move "%LOCALAPPDATA%\Discord\en-US.pak" "locales" >nul 2>&1
move "%LOCALAPPDATA%\Discord\pt-BR.pak" "locales" >nul 2>&1

:: others
del /q "%localappdata%\Discord\packages\Discord-*.nupkg"
del /s /q "%localappdata%\Discord\download\*.*"
del /s /q "%appdata%\discord\logs\*.*"
del /s /q "%appdata%\discord\crash_reports\*.*"
del /s /q "%appdata%\discord\Cache\*.*"
del /s /q "%appdata%\discord\Cache\Cache_Data\*.*"
del /s /q "%appdata%\discord\Code Cache\js\*.*"
del /s /q "%appdata%\discord\Code Cache\wasm\*.*"
del /s /q "%appdata%\discord\GPUCache\*.*"
del /s /q "%appdata%\discord\Sessions\*.*"
reg delete "HKEY_CURRENT_USER\SOFTWARE\Discord\Modules" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v Discord /f
reg delete "HKEY_CURRENT_USER\Software\Discord\HardwareCapture" /f
reg delete "HKEY_CURRENT_USER\Software\Discord\ErrorReporting" /f
reg delete "HKEY_CURRENT_USER\Software\Discord\GameIntegration" /f
reg delete "HKEY_CURRENT_USER\Software\Discord\Games" /f
reg delete "HKEY_CURRENT_USER\Software\Discord\Debug" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Discord\Update" /f

:: OpenAsar
echo downloading OpenAsar
powershell Invoke-WebRequest -Uri "https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar" -OutFile "C:\Windows\Temp\app.asar"
cd %LOCALAPPDATA%\Discord\app*\resources >nul 2>&1
del /f /q app.asar >nul 2>&1
cd %LOCALAPPDATA%\Discord\app* >nul 2>&1
move "C:\Windows\Temp\app.asar" "resources" >nul 2>&1
cls

:: config discord + openasar local
(
  echo {
  echo   "openasar": {
  echo     "setup": true,
  echo     "quickstart": true,
  echo     "cmdPreset": "battery"
  echo   },
  echo   "enableHardwareAcceleration": false,
  echo   "OPEN_ON_STARTUP": false
  echo }
) > "%appdata%\discord\settings.json"

:: Link to desktop
mklink "Discord Debloated" "%LOCALAPPDATA%\Discord\StartDiscord.bat" >nul 2>&1
move "Discord Debloated" %HOMEPATH%\Desktop >nul 2>&1

echo.
echo.
echo If Discord does not start in the future, reinstall it from the internet.

timeout 3 >nul 2>&1
exit /b

:rpc 
TASKKILL /T /F /IM Discord.exe >nul 2>&1
cd /d %LOCALAPPDATA%\Discord\app*\modules >nul 2>&1
for %%a in ("discord_rpc-1") do rmdir /s /q "%%~a" >nul 2>&1
goto :menu

:logo
echo.
echo.
echo.
for %%a in (
"        ▓█████▄  ██▓  ██████  ▄████▄   ▒█████   ██▀███  ▓█████▄  "
"        ▒██▀ ██▌▓██▒▒██    ░▒██▀ ▀█  ▒██▒  ██▒▓██ ░██▒▒  ██▀ ██▌ "
"        ░██   █▌▒██▒░ ▓██▄   ░▓█    ▄ ▒██░  ██▒▓██ ░▄█ ░░██   █▌ "
"        ░▓█▄  █▌░██░  ▒   ██▒▒▓▓▄ ▄██▒▒██   ██░▒██▀▀█▄  ░▓█▄  █▌ "
"        ░▒████▓ ░██░▒██████▒▒▒ ▓███▀ ░░ ████▓▒░░██▓ ▒██▒░▒████▓  "
"        ▒▒▓  ▒ ░▓  ▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒▓ ░▒▓░ ▒▒▓  ▒   "
"        ░ ▒  ▒  ▒ ░░ ░▒  ░ ░  ░  ▒     ░ ▒ ▒░   ░▒ ░ ▒░ ░ ▒  ▒   "
"        ░ ░  ░  ▒ ░░  ░  ░  ░        ░ ░ ░ ▒    ░░   ░  ░ ░  ░   "
"        ░     ░        ░  ░ ░          ░ ░     ░        ░        "
"        ░                   ░                           ░        "
""
) do echo                           !ESC![38;2;175;134;255m%%~a!ESC![0m
echo.


