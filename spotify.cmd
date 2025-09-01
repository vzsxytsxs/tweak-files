@echo off
title "| Spotify Debloater | Github.com/vzsxytsxs |"

:menu
echo [1] Basic Debloat 
echo [2] Advanced Debloat
echo [3] Credits
set /p input=":"
if "%input%"=="1" (
    goto basic
) else if "%input%"=="2" (
    set advanced= true
    goto basic
) else if "%input%"=="3" (
    goto credits
) else (
    echo invalid choice. try again.
    pause
    goto menu
)

:basic
cls
taskkill /f /im Spotify.exe >NUL 2>&1
del /f /s /q "%appdata%\Spotify\SpotifyMigrator.exe" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\SpotifyStartupTask.exe" >NUL 2>&1
cls
echo Delete useless Features? (y or n)
set /p input=":"
if "%input%"=="y" (
    goto useless
) else if "%input%"=="n" (
    goto update
) else (
    goto update
)
:useless
del /f /s /q "%appdata%\Spotify\Apps\Buddy-list.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Concert.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Concerts.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Error.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Findfriends.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Legacy-lyrics.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Lyrics.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Show.spa" >NUL 2>&1
del /f /s /q "%appdata%\Spotify\Apps\Buddy-list.spa" >NUL 2>&1

:update
Reg.exe delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Spotify" /f >NUL 2>&1
rmdir "%localappdata%\Spotify\Update" >NUL 2>&1
mkdir "%localappdata%\Spotify\Update" >NUL 2>&1
icacls "%localappdata%\Spotify\Update" /deny "%username%":D >NUL 2>&1
icacls "%localappdata%\Spotify\Update" /deny "%username%":R >NUL 2>&1
icacls "%localappdata%\Spotify\Update" /deny "%username%":W >NUL 2>&1

cd /d "%APPDATA%\Spotify" >NUL 2>&1
copy "%APPDATA%\Spotify\locales\en-US.pak" "%APPDATA%\Spotify" >NUL 2>&1
rmdir "%APPDATA%\Spotify\locales" /s /q >NUL 2>&1
mkdir "%APPDATA%\Spotify\locales" >NUL 2>&1
move "%APPDATA%\Spotify\en-US.pak" "%APPDATA%\Spotify\locales" >NUL 2>&1

del /f chrome_1*.*, chrome_2*.*, crash*.*, SpotifyMigrator.exe, SpotifyStartupTask.exe, d3d*.*, debug.log, libegl.dll, libgle*.*, snapshot*.*, vk*.*, vulkan*.* >NUL 2>&1
cls

if "%advanced%"=="true" (
    goto advanced
) else (
    echo All Done.
    pause
    exit
)

:advanced
cls
echo [01] About.spa - Seemingly no impact, playback is fine. Potentially could break the 'About' page on an artist's profile.
echo [02] Artist.spa - Deleting this will stop you from viewing an artist's profile entirely. Don't recommend stripping.
echo [03] Browse.spa - For 'Browse' tab. Can be removed but it can make UI a bit buggy, ex. Radio tab highlighted when you're on home page
echo [04] Buddy-list.spa - For 'Friends' functionality. Useless feature
echo [05] Charts.spa - Breaks functionality of Top 50 and Top 100 playlists in 'Browse' tab. Useless if you strip Browse.spa. Be careful when removing this, as it can increase ram utilization and cause spikes in CPU usage, since Spotify seems to actively search for this file.
echo [06] Collection.spa - Removing will break elements in the 'Your Library' section: Albums, Artists, Videos, and Podcasts. Favorite songs still work.
echo [07] Collection-album.spa - Doesn't appear to break anything stripped by itself. 
echo [08] Collection-artist.spa - Doesn't appear to break anything stripped by itself. 
echo [09] Collection-songs.spa - Breaks 'Favorite Songs' tab
echo [10] Concert and concerts.spa - Useless to leave. Breaks Concerts tab in 'Browse'. Can be useful to see upcoming concerts but most users will just look them up.
echo [11] Findfriends.spa - Works in conjunction with buddylist.spa. Enables you to add friends. Again, useless. You can still search for profiles on Spotify and listen to their playlists.
echo [12] Full-screen-modal.spa - I don't recommend stripping this. UI is extremely glitchy and feels much slower/choppier. 
echo [13] Genre.spa - Removes normal genres from 'Browse' tab. You'll see some playlists, but not the classic categories.
echo [14] Glue-resources.spa - Stripping will break icons within Spotify. Fonts look slightly different. Strip by preference, likely uses a bit less resources.
echo [15] Hub.spa - Doesn't appear to break anything
echo [16] Licenses.spa - Doesn't appear to break anything, but would recommend leaving just in case. 
echo [17] Login.spa - Will break sign-in screen. Safe to remove if you're already signed in.
echo [18] Lyrics.spa - Might break Artist screen, meaning you can't see an Artist's profile. Not entirely sure, need to retest.
echo [20] Playlist.spa - Will break playlists in your library. You can click them but they won't load.
echo [21] Playlist-folder.spa - Doesn't seem to break anything, might affect loading time of playlists.
echo [22] Profile.spa - Breaks profiles. Can still see artists' songs. Don't recommend stripping.
echo [23] Queue.spa - Doesn't seem to affect anything, add to queue still works. Would leave or make a backup just in case.
echo [24] Radio-hub.spa - Breaks 'Radio' tab. Useless tab for me, user choice.
echo [25] Search.spa - Self explanatory, removing will break the search functionality.
echo [26] Settings.spa - Self explanatory, removing will break the settings tab. 
echo [27] Show.spa - Might break 'Videos', I couldn't get them to play either way. 
echo [28] Station.spa and Stations.spa - Breaks Podcasts on newer versions of Spotify, sometimes on older versions (its luck?). Breaks radio on all versions.
echo [29] Zlink.spa - Deleting this will delete the entire UI. Potentially still usable as you could just use Spotify Connect from another device, such as your phone.
set /p input=":"
if "%input%"=="29" (
    del /f /s /q "%appdata%\Spotify\Apps\Zlink.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="01" (
    del /f /s /q "%appdata%\Spotify\Apps\About.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="02" (
    del /f /s /q "%appdata%\Spotify\Apps\Artist.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="03" (
    del /f /s /q "%appdata%\Spotify\Apps\Browse.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="04" (
    del /f /s /q "%appdata%\Spotify\Apps\Buddy-list.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="05" (
    del /f /s /q "%appdata%\Spotify\Apps\Charts.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="06" (
    del /f /s /q "%appdata%\Spotify\Apps\Collection.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="07" (
    del /f /s /q "%appdata%\Spotify\Apps\Collection-album.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="08" (
    del /f /s /q "%appdata%\Spotify\Apps\Collection-artist.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="09" (
    del /f /s /q "%appdata%\Spotify\Apps\Collection-songs.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="10" (
    del /f /s /q "%appdata%\Spotify\Apps\Concert and concerts.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="11" (
    del /f /s /q "%appdata%\Spotify\Apps\Findfriends.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="12" (
    del /f /s /q "%appdata%\Spotify\Apps\Full-screen-modal.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="13" (
    del /f /s /q "%appdata%\Spotify\Apps\Full-screen-modal.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="14" (
    del /f /s /q "%appdata%\Spotify\Apps\Genre.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="15" (
    del /f /s /q "%appdata%\Spotify\Apps\Glue-resources.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="16" (
    del /f /s /q "%appdata%\Spotify\Apps\Hub.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="17" (
    del /f /s /q "%appdata%\Spotify\Apps\Licenses.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="18" (
    del /f /s /q "%appdata%\Spotify\Apps\Login.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="19" (
    del /f /s /q "%appdata%\Spotify\Apps\Lyrics.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="20" (
    del /f /s /q "%appdata%\Spotify\Apps\Playlist.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="21" (
    del /f /s /q "%appdata%\Spotify\Apps\Playlist-folder.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="22" (
    del /f /s /q "%appdata%\Spotify\Apps\Profile.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="23" (
    del /f /s /q "%appdata%\Spotify\Apps\Queue.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="24" (
    del /f /s /q "%appdata%\Spotify\Apps\Radio-hub.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="25" (
    del /f /s /q "%appdata%\Spotify\Apps\Search.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="26" (
    del /f /s /q "%appdata%\Spotify\Apps\Settings.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="27" (
    del /f /s /q "%appdata%\Spotify\Apps\Show.spa" >NUL 2>&1
    goto advanced
) else if "%input%"=="28" (
    del /f /s /q "%appdata%\Spotify\Apps\Station.spa" >NUL 2>&1
    goto advanced
) else (
    echo invalid choice. try again.
    pause
    goto advanced
)

:credits
echo CatGamerOP From FoxOS | discord.gg/4Gg8n6WhPN
echo Velo | docs.google.com/document/d/18H_s8bAQ15sjKXzdA3-dHDGxTIVRcjLNWBnC6Wl7s9A/edit?tab=t.0
pause
goto menu
