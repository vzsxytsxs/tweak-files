@echo off
title Browser Tweaks / GitHub.com/vzsxytsxs

:menu
cls
echo [1] Firefox 
echo [2] LibreWolf
echo [3] Chrome
echo [4] Brave 
echo [5] Thorium
set /p input=":"
if "%input%"=="1" (
    goto :firefox 
) else if "%input%"=="2" (
    goto :librewolf
) else if "%input%"=="3" (
    goto :chrome
) else if "%input%"=="4" (
    goto :brave
) else if "%input%"=="5" (
    goto :thorium
) else (
    echo invalid choice. try again.
    pause
    goto :menu
)

:firefox 
cls
taskkill /f /im firefox.exe /t 
for %%a in (
    crashreporter.exe
    crashreporter.ini
    maintenanceservice.exe
    maintenanceservice_installer.exe
    minidump-analyzer.exe
    pingsender.exe
    updater.exe
    crash*.*
    maintenance*.*
    install.log
    minidump*.*
) do (
    del /f "%programfiles%\Mozilla Firefox\%%a" >nul 2>&1
)
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v ShowHomeButton /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v AllowFileSelectionDialogs /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v AppAutoUpdate /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v BackgroundAppUpdate /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v BlockAboutSupport /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableAppUpdate /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableBuiltinPDFViewer /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableFeedbackCommands /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableFirefoxAccounts /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableFirefoxScreenshots /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableFirefoxStudies /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableForgetButton /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableMasterPasswordCreation /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisablePocket /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableProfileImport /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableProfileRefresh /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableSafeMode /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableSetDesktopBackground /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableTelemetry /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DisableThirdPartyModuleBlocking /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v DontCheckDefaultBrowser /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v HardwareAcceleration /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v LegacyProfiles /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v ManualAppUpdateOnly /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v NetworkPrediction /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v NewTabPage /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v NoDefaultBookmarks /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v OfferToSaveLogins /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v UseSystemPrintDialog /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Cookies" /v Default /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\DisableSecurityBypass" /v SafeBrowsing /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\DisableSecurityBypass" /v InvalidCertificate /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection" /v Value /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection" /v Cryptomining /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection" /v Fingerprinting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection" /v Locked /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\EnableTrackingProtection" /v EmailTracking /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v Search /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v TopSites /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v SponsoredTopSites /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v Highlights /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v Pocket /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v SponsoredPocket /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v Snippets /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxHome" /v Locked /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxSuggest" /v ImproveSuggest /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxSuggest" /v Locked /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxSuggest" /v SponsoredSuggestions /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FirefoxSuggest" /v WebSuggestions /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FlashPlugin" /v Default /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\FlashPlugin" /v Locked /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Homepage" /v StartPage /t REG_SZ /d "homepage" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Homepage" /v URL /t REG_SZ /d "https://google.com" /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Homepage" /v Locked /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\InstallAddonsPermission" /v Default /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\PDFjs" /v Enabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\PDFjs" /v EnablePermissions /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Camera" /v BlockNewRequests /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Location" /v BlockNewRequests /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Permissions\Microphone" /v BlockNewRequests /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\PictureInPicture" /v Enabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v browser.cache.disk.enable /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v browser.fixup.dns_first_for_single_words /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v browser.safebrowsing.malware.enabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v browser.safebrowsing.phishing.enabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v browser.search.update /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v app.update.auto /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v browser.tabs.warnOnClose /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v browser.taskbar.previews.enable /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v datareporting.policy.dataSubmissionPolicyBypassNotification /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v dom.disable_window_flip /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v extensions.htmlaboutaddons.recommendations.enabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v geo.enabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\Preferences" /v security.ssl.errorReporting.enabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown" /v Cache /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\SanitizeOnShutdown" /v OfflineApps /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v ExtensionRecommendations /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v FeatureRecommendations /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v Locked /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v MoreFromMozilla /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v SkipOnboarding /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v UrlbarInterventions /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Mozilla\Firefox\UserMessaging" /v WhatsNew /t REG_DWORD /d 0 /f
cls
echo done. 
timeout /t 3 >nul
goto :menu

:librewolf
cls
for %%a in (
    crashreporter.exe
    crashreporter.ini
    maintenanceservice.exe
    maintenanceservice_installer.exe
    minidump-analyzer.exe
    pingsender.exe
    updater.exe
    crash*.*
    maintenance*.*
    install.log
    minidump*.*
) do (
    del /f "%programfiles%\LibreWolf\%%a" >nul 2>&1
)
cls
echo done. 
timeout /t 3 >nul
goto :menu

:chrome
cls 
taskkill /f /im chrome.exe /t 
sc delete gupdate >nul 2>&1
sc delete gupdatem >nul 2>&1
sc delete googlechromeelevationservice >nul 2>&1
rmdir /s /q "C:\Program Files (x86)\Google" >nul 2>&1
rmdir /s /q "C:\Program Files\Google\Chrome\Application\1*\Installer" >nul 2>&1
for %%a in (
    chrome_wer.dll
    notification_helper.exe
    chrome_pwa_launcher.exe
    d3d*.*
    vk*.*
    vulkan*.*
    elevation_service.exe
) do (
    del /f "C:\Program Files\Google\Chrome\Application\1*\%%a" >nul 2>&1
)
schtasks /delete /f /tn GoogleUpdateTaskMachineUA{179D918B-9BE9-4D1B-9FA2-D0B2D2491030} >nul 2>&1
schtasks /delete /f /tn GoogleUpdateTaskMachineCore{A0256FF4-D45E-420B-90B3-7D05AF116614} >nul 2>&1
reg delete "HKLM\Software\Microsoft\Active Setup\Installed Components\{8A69D345-D564-463c-AFF1-A69D9E530F96}" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{950E9395-8BFF-4D96-8731-A3BD3F3C3ABD}" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8EB03C8D-6422-494A-A237-B87232D89A24}" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8EB03C8D-6422-494A-A237-B87232D89A24}" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{950E9395-8BFF-4D96-8731-A3BD3F3C3ABD}" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\GoogleUpdateTaskMachineCore" /f >nul 2>&1
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\GoogleUpdateTaskMachineUA" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Google\Chrome\ExtensionInstallForcelist" /v 1 /t REG_SZ /d "cjpalhdlnbpafiamejdnhcphjbkeiagm" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome\ExtensionInstallForcelist" /v 2 /t REG_SZ /d "gebbhagfogifgggkldgodflihgfeippi" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome\ExtensionInstallForcelist" /v 3 /t REG_SZ /d "dcmllfkiihingappljlkffafnlhdpbai" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome\ExtensionInstallForcelist" /v 4 /t REG_SZ /d "donbcfbmhbcapadipfkeojnmajbakjdc" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome\ExtensionInstallForcelist" /v 5 /t REG_SZ /d "oobhedhmcdceknhbgjaeikeoaphaajlf" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome\ExtensionInstallForcelist" /v 6 /t REG_SZ /d "fihnjjcciajhdojfnbdddfaoknhalnja" /f
reg add "HKLM\Software\Policies\Google\Chrome\3rdparty\extensions\cjpalhdlnbpafiamejdnhcphjbkeiagm\policy" /v adminSettings /t REG_SZ /d "{\"timeStamp\":1675698823409,\"version\":\"1.46.0\",\"userSettings\":{\"advancedUserEnabled\":true,\"cloudStorageEnabled\":true,\"uiAccentCustom0\":\"#56a22b\",\"externalLists\":\"https://filters.adtidy.org/windows/filters/18.txt\\nhttps://gitlab.com/Sorrow-San/9anime-adblock-filters/raw/master/9Anime filter list\\nhttps://gitlab.com/Sorrow-San/9anime-adblock-filters/raw/master_with_banners/9Anime filter list\\nhttps://hg.adblockplus.org/facebookfilters/raw-file/default/fb_annoyances_newsfeed.txt\\nhttps://raw.githubusercontent.com/DandelionSprout/adfilt/master/I Don't Want to Download Your Browser.txt\\nhttps://raw.githubusercontent.com/DandelionSprout/adfilt/master/ImgurPureImageryExperience.txt\\nhttps://raw.githubusercontent.com/DandelionSprout/adfilt/master/KnowYourMemePureBrowsingExperience.txt\\nhttps://raw.githubusercontent.com/DandelionSprout/adfilt/master/RickrollLinkIdentifier.txt\\nhttps://raw.githubusercontent.com/DandelionSprout/adfilt/master/Sensitive lists/SayNoToRacismOnTwitch.txt\\nhttps://raw.githubusercontent.com/DandelionSprout/adfilt/master/Sensitive lists/Twitter De-Politificator.txt\\nhttps://raw.githubusercontent.com/DandelionSprout/adfilt/master/TwitchEvenMorePureViewingExperience.txt\\nhttps://raw.githubusercontent.com/DandelionSprout/adfilt/master/TwitchPureViewingExperience.txt\\nhttps://raw.githubusercontent.com/DandelionSprout/adfilt/master/TwitterPureReadingExperience.txt\\nhttps://raw.githubusercontent.com/DandelionSprout/adfilt/master/WebsiteStretcher4K.txt\\nhttps://raw.githubusercontent.com/DandelionSprout/adfilt/master/WikiaPureBrowsingExperience.txt\\nhttps://raw.githubusercontent.com/Manu1400/i-don-t-care-about-newsletters/master/adp.txt\\nhttps://raw.githubusercontent.com/MassMove/AttackVectors/master/LocalJournals/fake-local-journals-list.txt\\nhttps://raw.githubusercontent.com/Nebula-Mechanica/Anti-AutoTranslation-List/master/anti-autotranslation-list.txt\\nhttps://raw.githubusercontent.com/PoorPocketsMcNewHold/steamscamsites/master/steamscamsite.txt\\nhttps://raw.githubusercontent.com/Recon/romanian-media-propaganda-adblock-list/master/ro-media-blocklist.txt\\nhttps://raw.githubusercontent.com/Rudloff/adblock-imokwithcookies/master/filters.txt\\nhttps://raw.githubusercontent.com/ionuttbara/melody_windows/main/ublockfilter.txt\\nhttps://raw.githubusercontent.com/caffeinewriter/DontPushMe/master/filterlist.txt\\nhttps://raw.githubusercontent.com/deletescape/noads/master/lists/unbreak.txt\\nhttps://raw.githubusercontent.com/ryanbr/fanboy-adblock/master/fake-news.txt\\nhttps://raw.githubusercontent.com/troysjanda/MyBlockLists/master/yahoocomplete.txt\\nhttps://www.i-dont-care-about-cookies.eu/abp/\",\"ignoreGenericCosmeticFilters\":true,\"importedLists\":[\"https://filters.adtidy.org/windows/filters/18.txt\",\"https://gitlab.com/Sorrow-San/9anime-adblock-filters/raw/master/9Anime filter list\",\"https://gitlab.com/Sorrow-San/9anime-adblock-filters/raw/master_with_banners/9Anime filter list\",\"https://hg.adblockplus.org/facebookfilters/raw-file/default/fb_annoyances_newsfeed.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/I Don't Want to Download Your Browser.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/ImgurPureImageryExperience.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/KnowYourMemePureBrowsingExperience.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Sensitive lists/SayNoToRacismOnTwitch.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Sensitive lists/Twitter De-Politificator.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/TwitchEvenMorePureViewingExperience.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/TwitchPureViewingExperience.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/TwitterPureReadingExperience.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/WebsiteStretcher4K.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/WikiaPureBrowsingExperience.txt\",\"https://raw.githubusercontent.com/Manu1400/i-don-t-care-about-newsletters/master/adp.txt\",\"https://raw.githubusercontent.com/MassMove/AttackVectors/master/LocalJournals/fake-local-journals-list.txt\",\"https://raw.githubusercontent.com/Nebula-Mechanica/Anti-AutoTranslation-List/master/anti-autotranslation-list.txt\",\"https://raw.githubusercontent.com/PoorPocketsMcNewHold/steamscamsites/master/steamscamsite.txt\",\"https://raw.githubusercontent.com/Recon/romanian-media-propaganda-adblock-list/master/ro-media-blocklist.txt\",\"https://raw.githubusercontent.com/Rudloff/adblock-imokwithcookies/master/filters.txt\",\"https://raw.githubusercontent.com/ionuttbara/melody_windows/main/ublockfilter.txt\",\"https://raw.githubusercontent.com/caffeinewriter/DontPushMe/master/filterlist.txt\",\"https://raw.githubusercontent.com/deletescape/noads/master/lists/unbreak.txt\",\"https://raw.githubusercontent.com/eEIi0A5L/adblock_filter/master/kujira_filter.txt\",\"https://raw.githubusercontent.com/ryanbr/fanboy-adblock/master/fake-news.txt\",\"https://raw.githubusercontent.com/troysjanda/MyBlockLists/master/yahoocomplete.txt\",\"https://www.i-dont-care-about-cookies.eu/abp/\"],\"popupPanelSections\":63},\"selectedFilterLists\":[\"user-filters\",\"ublock-filters\",\"ublock-badware\",\"ublock-privacy\",\"ublock-quick-fixes\",\"ublock-abuse\",\"ublock-unbreak\",\"adguard-generic\",\"adguard-mobile\",\"easylist\",\"adguard-spyware-url\",\"easyprivacy\",\"urlhaus-1\",\"plowe-0\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/TwitchEvenMorePureViewingExperience.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/KnowYourMemePureBrowsingExperience.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/WikiaPureBrowsingExperience.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/ImgurPureImageryExperience.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/TwitterPureReadingExperience.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Sensitive lists/SayNoToRacismOnTwitch.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/TwitchPureViewingExperience.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/I Don't Want to Download Your Browser.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Sensitive lists/Twitter De-Politificator.txt\",\"https://raw.githubusercontent.com/DandelionSprout/adfilt/master/WebsiteStretcher4K.txt\",\"https://gitlab.com/Sorrow-San/9anime-adblock-filters/raw/master_with_banners/9Anime filter list\",\"https://gitlab.com/Sorrow-San/9anime-adblock-filters/raw/master/9Anime filter list\",\"https://filters.adtidy.org/windows/filters/18.txt\",\"https://raw.githubusercontent.com/Nebula-Mechanica/Anti-AutoTranslation-List/master/anti-autotranslation-list.txt\",\"https://raw.githubusercontent.com/caffeinewriter/DontPushMe/master/filterlist.txt\",\"https://hg.adblockplus.org/facebookfilters/raw-file/default/fb_annoyances_newsfeed.txt\",\"https://raw.githubusercontent.com/MassMove/AttackVectors/master/LocalJournals/fake-local-journals-list.txt\",\"https://raw.githubusercontent.com/ryanbr/fanboy-adblock/master/fake-news.txt\",\"https://www.i-dont-care-about-cookies.eu/abp/\",\"https://raw.githubusercontent.com/Manu1400/i-don-t-care-about-newsletters/master/adp.txt\",\"https://raw.githubusercontent.com/Rudloff/adblock-imokwithcookies/master/filters.txt\",\"https://raw.githubusercontent.com/ionuttbara/melody_windows/main/ublockfilter.txt\",\"https://raw.githubusercontent.com/deletescape/noads/master/lists/unbreak.txt\",\"https://raw.githubusercontent.com/Recon/romanian-media-propaganda-adblock-list/master/ro-media-blocklist.txt\",\"https://raw.githubusercontent.com/PoorPocketsMcNewHold/steamscamsites/master/steamscamsite.txt\",\"https://raw.githubusercontent.com/troysjanda/MyBlockLists/master/yahoocomplete.txt\",\"https://raw.githubusercontent.com/eEIi0A5L/adblock_filter/master/kujira_filter.txt\"],\"hiddenSettings\":{},\"whitelist\":[\"about-scheme\",\"chrome-extension-scheme\",\"chrome-scheme\",\"edge-scheme\",\"moz-extension-scheme\",\"opera-scheme\",\"vivaldi-scheme\",\"wyciwyg-scheme\"],\"dynamicFilteringString\":\"behind-the-scene * * noop\\nbehind-the-scene * inline-script noop\\nbehind-the-scene * 1p-script noop\\nbehind-the-scene * 3p-script noop\\nbehind-the-scene * 3p-frame noop\\nbehind-the-scene * image noop\\nbehind-the-scene * 3p noop\",\"urlFilteringString\":\"\",\"hostnameSwitchesString\":\"no-large-media: behind-the-scene false\\nno-csp-reports: * true\"}" /f
reg add "HKLM\SOFTWARE\Policies\Google\Update" /v InstallDefault /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Policies\Google\Update" /v UpdateDefault /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Google\Update" /v ProxyMode /t REG_SZ /d "direct" /f
reg add "HKLM\SOFTWARE\Policies\Google\Update" /v CloudPolicyOverridesPlatformPolicy /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Update" /v AutoUpdateCheckPeriodMinutes /t REG_DWORD /d 20800 /f
reg add "HKLM\SOFTWARE\Policies\Google\Update" /v Install{4CCED17F-7852-4AFC-9E9E-C89D8795BDD2} /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Update" /v Install{ADDE8406-A0F3-4AC2-8878-ADC0BD37BD86} /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Update" /v TargetChannel{8A69D345-D564-463C-AFF1-A69D9E530F96} /t REG_SZ /d "extended" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultSearchProviderEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultSearchProviderImageURLPostParams /t REG_SZ /d "content={google:imageThumbnail},url={google:imageURL},sbisrc={google:imageSearchSource}" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultSearchProviderKeyword /t REG_SZ /d "googl" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultSearchProviderName /t REG_SZ /d "Google" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultSearchProviderSuggestURL /t REG_SZ /d "{google:baseURL}complete/search?output=chrome&q={searchTerms}" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultSearchProviderSearchURLPostParams /t REG_SZ /d "q={searchTerms},ie=utf-8,oe=utf-8" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultSearchProviderSearchURL /t REG_SZ /d "{google:baseURL}search?q={searchTerms}&{google:RLZ}{google:originalQueryForSuggestion}{google:assistedQueryStats}{google:searchFieldtrialParameter}{google:searchClient}{google:sourceId}ie={inputEncoding}" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultSearchProviderSuggestURLPostParams /t REG_SZ /d "q={searchTerms},ie=utf-8,oe=utf-8" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v HelpMeWriteSettings /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v LensRegionSearchEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v LensOverlaySettings /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v HistorySearchSettings /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v TabOrganizerSettings /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v EnableMediaRouter /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v GenAiDefaultSettings /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v HelpMeWriteSettings /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v CreateThemesSettings /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v HistorySearchSettings /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DevToolsGenAiSettings /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v TabCompareSettings /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v GenAILocalFoundationalModelSettings /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v MediaRouterCastAllowAllIPs /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ShowCastIconInToolbar /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ShowCastSessionsStartedByOtherDevices /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AccessCodeCastEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v CloudAPAuthEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v CompressionDictionaryTransportEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AccessControlAllowMethodsInCORSPreflightSpecConformant /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v IPv6ReachabilityOverrideEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ZstdContentEncodingEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DeletingUndecryptablePasswordsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PasswordLeakDetectionEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PrintHeaderFooter /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PrintingEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PrintingLPACSandboxEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PrivacySandboxAdMeasurementEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PrivacySandboxAdTopicsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PrivacySandboxPromptEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PrivacySandboxSiteEnabledAdsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ExtensionManifestV2Availability /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ExtensionUnpublishedAvailability /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v CloudProfileReportingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v CreateThemesSettings /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DevToolsGenAiSettings /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v GenAILocalFoundationalModelSettings /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v WPADQuickCheckEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v WebRtcEventLogCollectionAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v WebRtcIPHandling /t REG_SZ /d "default" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v WebRtcTextLogCollectionAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultLocalFontsSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultInsecureContentSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PrivateNetworkAccessRestrictionsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AdvancedProtectionDeepScanningEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultPluginsSetting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DisableSSLRecordSplitting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DnsPrefetchingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v OptimizationGuideFetchingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SafeBrowsingSurveysEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SafeBrowsingProxiedRealTimeChecksAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SafeBrowsingExtendedReportingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SafeBrowsingProtectionLevel /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DisableSafeBrowsingProceedAnyway /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PasswordProtectionWarningTrigger /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SafeBrowsingDeepScanningEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v HomepageIsNewTabPage /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v HomepageLocation /t REG_SZ /d "google.com" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v NewTabPageLocation /t REG_SZ /d "google.com" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v RestoreOnStartup /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ShowHomeButton /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AbusiveExperienceInterventionEnforce /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AccessibilityImageLabelsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AdditionalDnsQueryTypesEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AdsSettingForIntrusiveAdsSites /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AdvancedProtectionAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AllowBackForwardCacheForCacheControlNoStorePageEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AllowDinosaurEasterEgg /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AllowFileSelectionDialogs /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AlternateErrorPagesEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ApplicationBoundEncryptionEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AudioCaptureAllowed /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AudioProcessHighPriorityEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AudioSandboxEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v AutoplayAllowed /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v BackgroundModeEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v BatterySaverModeAvailability /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v BrowserGuestModeEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v BrowserGuestModeEnforced /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v BrowserLabsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v BrowserNetworkTimeQueriesEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v BrowserSignin /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v BuiltInDnsClientEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v CSSCustomStateDeprecatedSyntaxEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v CORSNonWildcardRequestHeadersSupport /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ChromeForTestingAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ChromeVariations /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ClickToCallEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v CloudManagementEnrollmentMandatory /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v CloudPolicyOverridesPlatformPolicy /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v CloudUserPolicyMerge /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v CloudUserPolicyOverridesCloudMachinePolicy /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v CommandLineFlagSecurityWarningsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ComponentUpdatesEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DNSInterceptionChecksEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultBrowserSettingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DesktopSharingHubEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DomainReliabilityAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DownloadRestrictions /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DynamicCodeSettings /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v FeedbackSurveysEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ForceGoogleSafeSearch /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ForcePermissionPolicyUnloadDefaultEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ForceYouTubeRestrict /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v FullscreenAllowed /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v GloballyScopeHTTPAuthCacheEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v GoogleSearchSidePanelEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v HardwareAccelerationModeEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v HeadlessMode /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v HideWebStoreIcon /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v HighEfficiencyModeEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v HistoryClustersVisible /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v HttpsUpgradesEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v IntensiveWakeUpThrottlingEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v IntranetRedirectBehavior /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v KeyboardFocusableScrollersEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v LensDesktopNTPSearchEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v LensRegionSearchEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v MediaRecommendationsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v MetricsReportingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v NTPCardsVisible /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v NetworkPredictionOptions /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v NetworkServiceSandboxEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PaymentMethodQueryEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PrefixedVideoFullscreenApiAvailability /t REG_SZ /d "enabled" /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PromotionalTabsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v PromotionsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v QRCodeGeneratorEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v QuicAllowed /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v RendererAppContainerEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v RequireOnlineRevocationChecksForLocalAnchors /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v RoamingProfileSupportEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SafeBrowsingForTrustedSourcesEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SandboxExternalProtocolBlocked /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SafeSitesFilterBehavior /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ScrollToTextFragmentEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SharedClipboardEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ShoppingListEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ShowFullUrlsInAddressBar /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SideSearchEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SpellCheckServiceEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SpellcheckEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v StandardizedBrowserZoomEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SuppressUnsupportedOSWarning /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v TaskManagerEndProcessEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ToolbarAvatarLabelSettings /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v TranslateEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v UrlKeyedAnonymizedDataCollectionEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v UserAgentReduction /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v UserFeedbackAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v SafeBrowsingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v RendererCodeIntegrityEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v InsecureFormsWarningsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultWindowPlacementSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v UiAutomationProviderEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v ScreenCaptureAllowed /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DataUrlInSvgUseEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultGeolocationSetting /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultWindowManagementSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultWebUsbGuardSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultWebHidGuardSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultWebBluetoothGuardSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultSerialGuardSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v DefaultNotificationsSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome" /v WindowOcclusionEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Google\Chrome\ClearBrowsingDataOnExitList" /v 1 /t REG_SZ /d "cached_images_and_files" /f
reg add "HKCU\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_policy_data /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_machine_id_data /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_extensions_data /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_version_data /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_safe_browsing_data /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_system_telemetry_data /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_user_browsing_data /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_user_id_data /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v log_to_eventlog /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_policy_data /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_machine_id_data /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_extensions_data /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_version_data /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_safe_browsing_data /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_system_telemetry_data /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_user_browsing_data /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v report_user_id_data /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Google\Chrome\3rdparty\extensions\emahakmocgideepebncgnmlmliepgpgb\Policy" /v log_to_eventlog /t REG_DWORD /d 0 /f
cls
echo done. 
timeout /t 3 >nul
goto :menu

:brave
:: close brave
taskkill /f /im brave.exe /t 

:: del services
sc delete brave
sc delete bravem
sc delete BraveElevationService

:: debloater
echo deleting useless files
rmdir /s /q "C:\Program Files (x86)\BraveSoftware" >nul 2>&1
rmdir /s /q "%localappdata%\BraveSoftware\Update" >nul 2>&1
rmdir /s /q "C:\Program Files\BraveSoftware\Brave-Browser\Application\SetupMetrics" >nul 2>&1
rmdir /s /q "C:\ProgramData\BraveSoftware" >nul 2>&1
for %%a in (
    Installer
    BraveVpnWireguardService
    Extensions
    IwaKeyDistribution
    PrivacySandboxAttestationsPreloaded
    MEIPreload
) do (
    rmdir /s /q "%programfiles%\BraveSoftware\Brave-Browser\Application\1*\%%a" >nul 2>&1
)
for %%a in (
    notification_helper.exe
    eventlog_provider.dll
    chrome_pwa_launcher.exe
    brave_vpn_helper.exe
    elevation_service.exe
    vulkan-1.dll
    libEGL.dll
    libGLESv2.dll
    d3dcompiler_47.dll
    dxcompiler.dll
    dxil.dll
) do (
    del /f "%programfiles%\BraveSoftware\Brave-Browser\Application\1*\%%a" >nul 2>&1
)
del /f "%programfiles%\BraveSoftware\Brave-Browser\Application\chrmstp.exe" >nul 2>&1

:: cleaning reg
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineCore" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineCore{FE515A4B-9531-42A3-9ABB-4CEC234762CD}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineUA" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\BraveSoftwareUpdateTaskMachineUA{981B6403-1813-4DE8-9D2D-F73F2DA25E50}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{781AE031-F26B-47E5-9257-00B9378E2439}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{5B7D273A-5382-4BC9-9F25-49D34A368FAA}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{5B7D273A-5382-4BC9-9F25-49D34A368FAA}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{781AE031-F26B-47E5-9257-00B9378E2439}" /f
reg delete "HKLM\Software\Microsoft\Active Setup\Installed Components\{AFE6A462-C574-4B8A-AF43-4CC60DF4563B}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{56CA197F-543C-40DC-953C-B9C6196C92A5}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{0948A341-8E1E-479F-A667-6169E4D5CB2A}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{0948A341-8E1E-479F-A667-6169E4D5CB2A}" /f
reg delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{56CA197F-543C-40DC-953C-B9C6196C92A5}" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "BraveVpnWireguardService" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "BraveVpnWireguardService" /f
schtasks /delete /tn "BraveSoftwareUpdateTaskMachineCore{2320C90E-9617-4C25-88E0-CC10B8F3B6BB}" /f
schtasks /delete /tn "BraveSoftwareUpdateTaskMachineUA{FD1FD78D-BD51-4A16-9F47-EE6518C2D038}" /f
schtasks /delete /tn "BraveSoftwareUpdateTaskMachineCore{1B4ECC99-A065-4BA8-B4B5-6828D11834AC}" /f
schtasks /delete /tn "BraveSoftwareUpdateTaskMachineUA{C2741D3F-2DB1-4D3D-9679-8AF7E44826F3}" /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v UiAutomationProviderEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ScreenCaptureAllowed /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DataUrlInSvgUseEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultGeolocationSetting /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultWindowManagementSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultWebUsbGuardSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultWebHidGuardSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultWebBluetoothGuardSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultSerialGuardSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultSensorsSetting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultNotificationsSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultLocalFontsSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultJavaScriptJitSetting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultInsecureContentSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultSearchProviderEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultSearchProviderImageURLPostParams /t REG_SZ /d "content={google:imageThumbnail},url={google:imageURL},sbisrc={google:imageSearchSource}" /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultSearchProviderKeyword /t REG_SZ /d "googl" /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultSearchProviderName /t REG_SZ /d "Google" /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultSearchProviderSuggestURL /t REG_SZ /d "{google:baseURL}complete/search?output=chrome&q={searchTerms}" /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultSearchProviderSearchURLPostParams /t REG_SZ /d "q={searchTerms},ie=utf-8,oe=utf-8" /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultSearchProviderSearchURL /t REG_SZ /d "{google:baseURL}search?q={searchTerms}&{google:RLZ}{google:originalQueryForSuggestion}{google:assistedQueryStats}{google:searchFieldtrialParameter}{google:searchClient}{google:sourceId}ie={inputEncoding}" /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultSearchProviderSuggestURLPostParams /t REG_SZ /d "q={searchTerms},ie=utf-8,oe=utf-8" /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SafeBrowsingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v RendererCodeIntegrityEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ProxyServerMode /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v InsecureFormsWarningsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultWindowPlacementSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultMediaStreamSetting /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ExtensionManifestV2Availability /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ExtensionUnpublishedAvailability /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v CreateThemesSettings /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DevToolsGenAiSettings /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v GenAILocalFoundationalModelSettings /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v HelpMeWriteSettings /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v HistorySearchSettings /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v TabOrganizerSettings /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v EnableMediaRouter /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v MediaRouterCastAllowAllIPs /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ShowCastIconInToolbar /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ShowCastSessionsStartedByOtherDevices /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AccessCodeCastEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v CloudAPAuthEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v CompressionDictionaryTransportEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AccessControlAllowMethodsInCORSPreflightSpecConformant /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v IPv6ReachabilityOverrideEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ZstdContentEncodingEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DeletingUndecryptablePasswordsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PasswordLeakDetectionEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PrintHeaderFooter /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PrintingEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PrintingLPACSandboxEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PrivacySandboxAdMeasurementEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PrivacySandboxAdTopicsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PrivacySandboxPromptEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PrivacySandboxSiteEnabledAdsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PrivateNetworkAccessRestrictionsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AdvancedProtectionDeepScanningEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultPluginsSetting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DisableSSLRecordSplitting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DnsPrefetchingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v OptimizationGuideFetchingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SafeBrowsingSurveysEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SafeBrowsingProxiedRealTimeChecksAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SafeBrowsingExtendedReportingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SafeBrowsingProtectionLevel /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DisableSafeBrowsingProceedAnyway /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PasswordProtectionWarningTrigger /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SafeBrowsingDeepScanningEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v HomepageIsNewTabPage /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v HomepageLocation /t REG_SZ /d "google.com" /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v NewTabPageLocation /t REG_SZ /d "google.com" /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v RestoreOnStartup /t REG_DWORD /d 4 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ShowHomeButton /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AbusiveExperienceInterventionEnforce /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AccessibilityImageLabelsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AdditionalDnsQueryTypesEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AdsSettingForIntrusiveAdsSites /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AdvancedProtectionAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AllowBackForwardCacheForCacheControlNoStorePageEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AllowDinosaurEasterEgg /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AllowFileSelectionDialogs /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AlternateErrorPagesEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ApplicationBoundEncryptionEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AudioCaptureAllowed /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AudioProcessHighPriorityEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AudioSandboxEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v AutoplayAllowed /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v BackgroundModeEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v BatterySaverModeAvailability /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v BrowserGuestModeEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v BrowserGuestModeEnforced /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v BrowserLabsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v BrowserNetworkTimeQueriesEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v BrowserSignin /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v BuiltInDnsClientEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v CSSCustomStateDeprecatedSyntaxEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v CORSNonWildcardRequestHeadersSupport /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ChromeForTestingAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ChromeVariations /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ClickToCallEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v CloudManagementEnrollmentMandatory /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v CloudPolicyOverridesPlatformPolicy /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v CloudUserPolicyMerge /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v CloudUserPolicyOverridesCloudMachinePolicy /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v CommandLineFlagSecurityWarningsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ComponentUpdatesEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DNSInterceptionChecksEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DefaultBrowserSettingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DesktopSharingHubEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DomainReliabilityAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DownloadRestrictions /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v DynamicCodeSettings /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v FeedbackSurveysEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ForceGoogleSafeSearch /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ForcePermissionPolicyUnloadDefaultEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ForceYouTubeRestrict /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v FullscreenAllowed /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v GloballyScopeHTTPAuthCacheEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v GoogleSearchSidePanelEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v HardwareAccelerationModeEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v HeadlessMode /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v HideWebStoreIcon /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v HighEfficiencyModeEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v HistoryClustersVisible /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v HttpsUpgradesEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v IntensiveWakeUpThrottlingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v IntranetRedirectBehavior /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v KeyboardFocusableScrollersEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v LensDesktopNTPSearchEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v LensRegionSearchEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v MediaRecommendationsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v MetricsReportingEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v NTPCardsVisible /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v NetworkPredictionOptions /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v NetworkServiceSandboxEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PaymentMethodQueryEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PrefixedVideoFullscreenApiAvailability /t REG_SZ /d "enabled" /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PromotionalTabsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v PromotionsEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v QRCodeGeneratorEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v QuicAllowed /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v RendererAppContainerEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v RequireOnlineRevocationChecksForLocalAnchors /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v RoamingProfileSupportEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SafeBrowsingForTrustedSourcesEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SandboxExternalProtocolBlocked /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SafeSitesFilterBehavior /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ScrollToTextFragmentEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SharedClipboardEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ShoppingListEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ShowFullUrlsInAddressBar /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SideSearchEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SpellCheckServiceEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SpellcheckEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v StandardizedBrowserZoomEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v SuppressUnsupportedOSWarning /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v TaskManagerEndProcessEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v ToolbarAvatarLabelSettings /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v TranslateEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v UrlKeyedAnonymizedDataCollectionEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v UserAgentReduction /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v UserFeedbackAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v VideoCaptureAllowed /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v WPADQuickCheckEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v WebRtcEventLogCollectionAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v WebRtcIPHandling /t REG_SZ /d "default" /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v WebRtcTextLogCollectionAllowed /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v WindowOcclusionEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v IPFSEnabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v BraveWalletDisabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v BraveVPNDisabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\BraveSoftware\Brave" /v BraveAIChatEnabled /t REG_DWORD /d 0 /f
cls
echo done. 
timeout /t 3 >nul
goto :menu

:thorium
cls
for %%a in (
    chrome_wer.dll
    notification_helper.exe
    chrome_pwa_launcher.exe
    d3d*.*
    vk*.*
    vulkan*.*
) do (
    del /f "%localappdata%\thorium\application\1*\%%a" >nul 2>&1
)
cls
echo done. 
timeout /t 3 >nul
goto :menu
